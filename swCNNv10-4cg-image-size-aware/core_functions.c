#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <slave.h>
#include <math.h>
#include "def.h"
#include <dma.h>
#include "gemm.h"

/***************
 * GEMM PLAN 
 * Jerry Fang 2016.8.1
 * 写程序也要按照基本法
 * ************/
//#define DEBUG
#define SIMDSIZE 4
//output image size should be Co*Ro == 4x*4x
//Ni should be 8x
//input should be (4, Ci, Ri, Ni, 8)
//window size is (4,8)

void convforward_p_simd_rc_c(ConvData* param)
{
  int cNi, cRi, cCi, cKr, cKc, ccCore, crCore, cNo, cRo, cCo;
  int id = athread_get_id(-1);
  int cid = id%8, rid = id/8;
  int load_idx=0, calc_idx=1;
  int i, j, k;
  int Ni, Ri, Ci, No, K, Ro, Co, bCo;
  Ni = param->_Ni;
  Ri = param->_Ri;
  Ci = param->_Ci;
  No = param->_No;
  K  = param->_K;
  Ro = param->_Ro;
  Co = param->_Co;
  bCo=param->_bCo;
  int bCi=bCo+K-1;
  int RoStart;
  int CoStart;

//4, Ci, Ri, Ni, 8
  Type* local_input  = (Type*) ldm_malloc(sizeof(Type)*Ni/8*bCo*4*2);
  int local_input_size = Ni/8*bCo*4;
//No, Ni, K, K
  Type* local_weight = (Type*) ldm_malloc(sizeof(Type)*Ni/8*No/8*2);
  int local_weight_size = Ni*No/64;
//Co, Ro, No, 8
  Type* local_output = (Type*) ldm_malloc(sizeof(Type)*No/8*bCo*4);
  int local_output_size = No/8*bCo*4;
//initilize DMA variables
  volatile int  replyget_weight = 0, replyget_input=0, replyget_output=0, replyput = 0;
  dma_desc dma_get_input, dma_get_weight, dma_get_output, dma_put_output;

  dma_set_op(&dma_get_input, DMA_GET);
  dma_set_mode(&dma_get_input, PE_MODE);
  dma_set_reply(&dma_get_input, &replyget_input);

  dma_set_op(&dma_get_weight, DMA_GET);
  dma_set_mode(&dma_get_weight, PE_MODE);
  dma_set_reply(&dma_get_weight, &replyget_weight);

  dma_set_op(&dma_get_output, DMA_GET);
  dma_set_mode(&dma_get_output, PE_MODE);
  dma_set_reply(&dma_get_output, &replyget_output);

  dma_set_op(&dma_put_output, DMA_PUT);
  dma_set_mode(&dma_put_output, PE_MODE);
  dma_set_reply(&dma_put_output, &replyput);

  //DMA for local_iutput(4, bCi, Ni/8, 1)
  dma_set_size(&dma_get_input, 4*bCo*Ni/8*sizeof(Type));
  dma_set_bsize(&dma_get_input, 4*bCo*sizeof(Type));
  dma_set_stepsize(&dma_get_input, 4*(Ci-bCo)*sizeof(Type));

  //DMA for local_weight(No/8, Ni/8)
  dma_set_size(&dma_get_weight, No*Ni/8/8*sizeof(Type));
  dma_set_bsize(&dma_get_weight, Ni/8*sizeof(Type));
  dma_set_stepsize(&dma_get_weight, Ni/8*7*sizeof(Type));

  //DMA for local_output(4, bCo, 1, No/8, 1)
  dma_set_size(&dma_put_output, 4*bCo*No/8*sizeof(Type));
  dma_set_bsize(&dma_put_output, 4*bCo*sizeof(Type));
  dma_set_stepsize(&dma_put_output, 4*(Co-bCo)*sizeof(Type));
 
  Type* g_weight_ptr = param->weight+rid*Ni/8+cid*No/8*Ni;

  dma(dma_get_weight, (long)(g_weight_ptr), (long)(local_weight + calc_idx*local_weight_size ));
  Type* output_base = param->output + 4*((cid*No/8+rid*No)*Co);
  Type* input_base = param->input + 4*(cid*Ni/8+rid*Ni)*Ci;
  dma_wait(&replyget_weight, 1); replyget_weight = 0;


//DMA for 1st input
  dma(dma_get_input, (long)(input_base), (long)(local_input + calc_idx*local_input_size));
  dma_wait(&replyget_input, 1); replyget_input = 0;

  for(RoStart = 0; RoStart < Ro; RoStart++){
    for(CoStart = 0; CoStart < Co; CoStart+=bCo){
		
	 for(i=0; i<local_output_size;++i)
		local_output[i] = 0.0;

	  int weight_offset = Ni*No;
      for(cKr=0; cKr < K; ++cKr){
		for(cKc=0; cKc < K; ++cKc){
	  		//dma(dma_get_input, (long)(input_base + 4*((RoStart+cKr)*Ci*Ni*8 + (CoStart+cKc)) ), (long)(local_input));
	  		//dma_wait(&replyget_input, 1); replyget_input = 0;

			if(cKr == K-1 && cKc == K-1 ){
				dma(dma_get_weight, (long)(g_weight_ptr), (long)(local_weight+load_idx*local_weight_size));
				if(CoStart+bCo < Co){
					dma(dma_get_input, (long)(input_base + 4*((RoStart)*Ci*Ni*8 + (CoStart+bCo)) ), (long)(local_input + load_idx*local_input_size));
				}
				else{
					dma(dma_get_input, (long)(input_base + 4*((RoStart+1)*Ci*Ni*8)), (long)(local_input + load_idx*local_input_size));
				}
			}
			else{
				dma(dma_get_weight, (long)(g_weight_ptr + weight_offset), (long)(local_weight + load_idx*local_weight_size));
				if(cKc != K-1){
					dma(dma_get_input, (long)(input_base + 4*((RoStart+cKr)*Ci*Ni*8 + (CoStart+cKc+1)) ), (long)(local_input + load_idx*local_input_size));
				}
				else{
					dma(dma_get_input, (long)(input_base + 4*((RoStart+cKr+1)*Ci*Ni*8 + (CoStart)) ), (long)(local_input + load_idx*local_input_size));
				}
			}
				
			weight_offset+=Ni*No;

	  		gemm( local_input + calc_idx*local_input_size, 
					local_weight + calc_idx*local_weight_size, 
					local_output, 
					bCo, 
					bCo, 
					No/8, 
					Ni/8, 
					rid, 
					cid);

	  		dma_wait(&replyget_weight, 1); replyget_weight = 0;
			dma_wait(&replyget_input, 1); replyget_input = 0;

	  		load_idx = 1-load_idx;
			calc_idx = 1-calc_idx;
		}//cKc
	  }//cKr

      dma(dma_put_output, (long)(output_base + (RoStart*Co*No*8+CoStart)*4), (long)(local_output));
      dma_wait(&replyput, 1); replyput = 0;
    }//CoStart
  }//RoStart

  ldm_free(local_input, sizeof(Type)*Ni/8*bCo*4*2);
  ldm_free(local_weight, sizeof(Type)*Ni/8*No/8*2);
  ldm_free(local_output, sizeof(Type)*No/8*bCo*4);
}//main func

