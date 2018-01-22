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
 * input bCi
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
  int input_calc_index=1, input_load_index=0;
  int weight_calc_index=1, weight_load_index=0;
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
  Type* local_input  = (Type*) ldm_malloc(sizeof(Type)*Ni/8*bCi*4*2);
  int local_input_size = Ni*bCi/8*4;
//No, Ni, K, K
  Type* local_weight = (Type*) ldm_malloc(sizeof(Type)*Ni/8*No/8*2);
  int local_weight_size = Ni*No/8/8;
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

  //DMA for local_iutput(4, bCi, 1, Ni/8, 1)
  dma_set_size(&dma_get_input, 4*bCi*Ni/8*sizeof(Type));
  dma_set_bsize(&dma_get_input, 4*bCi*sizeof(Type));
  dma_set_stepsize(&dma_get_input, 4*(Ci-bCi)*sizeof(Type));

  //DMA for local_weight(No/8, Ni/8)
  dma_set_size(&dma_get_weight, No*Ni/8/8*sizeof(Type));
  dma_set_bsize(&dma_get_weight, Ni/8*sizeof(Type));
  dma_set_stepsize(&dma_get_weight, Ni/8*7*sizeof(Type));

  //DMA for local_output(4, bCo, 1, No/8, 1)
  dma_set_size(&dma_put_output, 4*bCo*No/8*sizeof(Type));
  dma_set_bsize(&dma_put_output, 4*bCo*sizeof(Type));
  dma_set_stepsize(&dma_put_output, 4*(Co-bCo)*sizeof(Type));
  
 
  //Weight DMA 1st
  Type* weight_base = param->weight + rid*Ni/8+cid*Ni*No/8;
  dma(dma_get_weight, (long)(weight_base), (long)(local_weight + weight_calc_index*local_weight_size ));

  Type* input_base = param->input + cid*Ni/8*Ci*4 + rid*Ci*4*Ni;
  Type* output_base = param->output + cid*No/8*Co*4 + rid*Co*4*No;

  dma_wait(&replyget_weight, 1); replyget_weight = 0;
	

  dma(dma_get_input, (long)(input_base), (long)(local_input + input_calc_index*local_input_size));
  dma_wait(&replyget_input, 1); replyget_input = 0;

  for(RoStart = 0; RoStart < Ro; RoStart++){
    for(CoStart = 0; CoStart < Co; CoStart+=bCo){

	  for(i = 0; i<local_output_size;++i)
			local_output[i] = 0.0;

	  int weight_offset = Ni*No;
      for(cKr=0; cKr < K; ++cKr){
//DMA the RoStart+cKr line of input
		//dma(dma_get_input, (long)(input_base + ((RoStart+cKr)*Ni*8*Ci+CoStart)*4), (long)(local_input));
		//dma_wait(&replyget_input, 1); replyget_input = 0;

        if(cKr != K-1){
			dma(dma_get_input, (long)(input_base + ((RoStart+cKr+1)*Ni*8*Ci+CoStart)*4), (long)(local_input + input_load_index*local_input_size));
		}
		else{
			if(CoStart+bCo < Co){
				dma(dma_get_input, (long)(input_base + ((RoStart)*Ni*8*Ci+CoStart+bCo)*4), (long)(local_input + input_load_index*local_input_size));
			}
			else{
				dma(dma_get_input, (long)(input_base + ((RoStart+1)*Ni*8*Ci)*4), (long)(local_input + input_load_index*local_input_size));
			}
		}

		for(cKc=0; cKc < K; ++cKc){
			
			if(cKr == K-1 && cKc == K-1 )
				dma(dma_get_weight, (long)(weight_base), (long)(local_weight + weight_load_index*local_weight_size));
			else
				dma(dma_get_weight, (long)(weight_base + weight_offset), (long)(local_weight + weight_load_index*local_weight_size));
				
			weight_offset+=Ni*No;

		    gemm(local_input+4*cKc + input_calc_index*local_input_size, 
					local_weight + weight_calc_index*local_weight_size, 
					local_output, 
					bCo, 
					bCi,
					No/8, 
					Ni/8, 
					rid, 
					cid);

			dma_wait(&replyget_weight, 1); replyget_weight = 0;
			weight_load_index = 1 - weight_load_index;
			weight_calc_index = 1 - weight_calc_index;
		}//cKc
		dma_wait(&replyget_input, 1); replyget_input = 0;
		input_load_index = 1 - input_load_index;
		input_calc_index = 1 - input_calc_index;
      }//cKr
      dma(dma_put_output, (long)(output_base + (RoStart*Co*No*8+CoStart)*4), (long)(local_output));
      dma_wait(&replyput, 1); replyput = 0;
    }//CoStart
  }//RoStart

  ldm_free(local_input, sizeof(Type)*Ni/8*bCi*4*2);
  ldm_free(local_weight, sizeof(Type)*Ni/8*No/8*2);
  ldm_free(local_output, sizeof(Type)*No/8*bCo*4);
}//main func

