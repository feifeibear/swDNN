#include <stdio.h>
#include <stdlib.h>
#include <athread.h>
#include <sys/time.h>
#include <assert.h>
#include "def.h"
//#include "mpi.h"
#include "core_functions.h"

#define TIME(a,b) (1.0*((b).tv_sec-(a).tv_sec)+0.000001*((b).tv_usec-(a).tv_usec))
#define TEST_STEPS 1 
/******************************
 * we use 8 times conv to finish B=32 version.
 * for each conv, the B should be 4.
 *
 * Oct. 15th 
 * 4cg version
 * images (4, Ci, Ni, 8, Ri)
 * weight (Ni, No, Kc, Kr)
 *
 * ****************************/

int K;	//shall not be too large
int Ro; //any
int bCo;//must be 4x for 4x4 reg group 
int Co;	
int Ni;	//must be 32x for 4x4 reg group
int Ri;	
int Ci;	
int No; //must 32x	 
int B;	//leading dimension, must be 4


extern SLAVE_FUN(convforward)();
extern SLAVE_FUN(convforward_p_simd_rc_c)();
extern SLAVE_FUN(convforward_p_simd_rc)();
extern SLAVE_FUN(dma_read)();

int init();
int check(Type *output, Type* coutput);
void naiveConv(Type*, Type*, Type*);

//4, Ci, Ni, 8, Ri
int inGetIdx(int cB, int cNi, int cCi, int cRi){
  return cB + cCi*B + cNi*B*Ci + cRi*Ci*B*8*Ni;
}

//4, Co, No, 8, Ro
int outGetIdx(int cB, int cNo, int cCo, int cRo){
  return cB + cCo*B + cNo*B*Co + cRo*Co*B*8*No ;
}

//Ni, No, K, K
int weightGetIdx(int cNi, int cKc, int cKr, int cNo){
  return cNi + cNo*Ni + (cKr*K + cKc)*No*Ni;
}

void CaffeConv(Type* input, Type* weight, Type* output){
  int cB,cNo,cNi,cRo,cCo,cKr,cKc;
  for(cRo=0; cRo<1; cRo++)
    for(cCo=0; cCo<Co; cCo++){
      
      for(cNo=0; cNo<No; cNo++){

          for(cKr = 0 ;cKr<K; cKr++)
            for(cKc = 0; cKc<K; cKc++){
              for(cNi = 0; cNi<Ni; cNi++){
                for(cB = 0; cB<B; cB++){

                  *(output + outGetIdx(cB, cNo, cCo, cRo)) += 
                    *(input + inGetIdx(cB, cNi, cCo+cKc, cRo+cKr)) * *(weight + weightGetIdx(cNi, cKc, cKr, cNo));
                }
            }
          }

      }//cNo
      
    }
}

void CaffeConv2(Type* input, Type* weight, Type* output){
  int cB,cNo,cNi,cRo,cCo,cKr,cKc,cCi,cRi;
  for(cKr = 0 ;cKr<K; cKr++)
    for(cKc = 0; cKc<K; cKc++){
      for(cRi=0; cRi<Ri; cRi++)
	for(cCi=0; cCi<Ci; cCi++){
	  cRo = cRi-cKr;
	  cCo = cCi-cKc;

	  if(cRo >=0 && cRo< Ro && cCo >=0 && cCo < Co){
	  //GEMM
	    for(cB = 0; cB<B; cB++)
	      for(cNo=0; cNo<No; cNo++)
                for(cNi = 0; cNi<Ni; cNi++){
                    *(output + outGetIdx(cB, cNo, cCo, cRo)) += 
                      *(input + inGetIdx(cB, cNi, cCi, cRi)) * *(weight + weightGetIdx(cNi, cKc, cKr, cNo));
	        }
	  }
	}//cCi
    }//cKc
      
}

DMA_banchmark(ConvData* p){
  struct timeval t1, t2;	
  int s;
  int STEPS = 10;
  //printf("Matrix of size %d X %d\n", 4*(bCo+K-1)*8, Ni);
  //printf("Begin Test Multiple DMA Read\n");

  gettimeofday(&t1, NULL);
  for(s = 0; s < STEPS; s ++)
  {
    athread_spawn(dma_read, p);
    athread_join();
  }
  gettimeofday(&t2, NULL);
  float tt = TIME(t1,t2);

  printf("Total Read Time:%0.9lfs, bandwidth is :%0.9lf GBps\n", tt, 
		  ((bCo*4*Ni*8)*sizeof(Type)*20*STEPS)/tt/1000000000);
}

#define pthread_step 100
int conv_forward_4cg(void* ptr){
	int i;
	athread_init();
	ConvData* param = (ConvData*)ptr;
	for(i = 0 ; i < pthread_step; ++ i){
		athread_spawn(convforward_p_simd_rc_c, param);
		athread_join();
	}
}
int main(int argc, char **argv)
{
	int s, i;
	struct timeval t1, t2;	
	K	= atoi(argv[1]);  //shall not be too large
	Ro	= atoi(argv[2]); //any
	bCo = atoi(argv[3]); //must be 4x for 4x4 reg group 
	Co	= 2*bCo; //atoi(argv[4]); //bCo;
	Ni	= atoi(argv[4]); //should be 32x for 4x4 reg group
	Ri	= (Ro+K-1); //(Ro+K-1);
	Ci	= (Co+K-1); //(Co+K-1);
	No	= atoi(argv[5]); 
	B	= 4; //leading dimension, must be 4 

    float gflop = 2.0*(No*Ro*Co*1.0/1000)*(K*K*Ni*1.0/1000)*32*1.0/1000;

    Type* input = (Type*)malloc(sizeof(Type)*32*Ni*Ri*Ci);
    Type* weight = (Type*)malloc(sizeof(Type)*No*Ni*K*K);
    Type* output = (Type*)malloc(sizeof(Type)*32*No*Ro*Co);
    Type* test_output = (Type*)malloc(sizeof(Type)*32*No*Ro*Co);
	#define NUM_CG 4
	ConvData* params[NUM_CG];
	for(i = 0; i < NUM_CG; ++i)
		params[i] = malloc(sizeof(ConvData));
	pthread_t pthread_handler[NUM_CG];


	int bCi = bCo+K-1;
	int ldm_consume = Ni/8*bCi*4 + Ni/8*No/8*2 +No/8*bCo*4;
	printf("ldm comsumption is %d KB\n", 8*ldm_consume);
	assert(8*ldm_consume < 1024*50);

    printf("B=%d, Ni=%d, No=%d, Ri=%d, Ci=%d, Ro=%d, Co=%d, K=%d, bCo=%d\n",B, Ni, No, Ri, Ci, Ro, Co, K, bCo);

    init(input, weight, output, test_output);
	athread_init();
    for(s = 0; s < TEST_STEPS; s ++){ 
		for(i = 0; i < NUM_CG; ++i){ 
            params[i]->input = input + i*(Ro/4)*Ci*Ni*32;
            params[i]->weight = weight;
            params[i]->output = output + i*(Ro/4)*Co*No*32;
	        params[i]->_Ni = Ni;
	        params[i]->_Ri = Ro/4+K-1;
	        params[i]->_Ci = Ci;
	        params[i]->_No = No;
	        params[i]->_K = K;
	        params[i]->_Ro = Ro/4;
	        params[i]->_Co = Co;
	        params[i]->_bCo = bCo;
		}

			DMA_banchmark(params[0]);

			//athread_spawn(convforward_p_simd_rc_c, params[0]);
			//athread_join();

			gettimeofday(&t1, NULL);
			
			for(i = 0 ; i < NUM_CG; ++i){
				pthread_create(&pthread_handler[i], NULL, conv_forward_4cg, (void*)params[i]);
			}
			for(i = 0 ; i < NUM_CG; ++i){
				pthread_join(pthread_handler[i], NULL);
			}
			
			gettimeofday(&t2, NULL);
			printf("Finish conv_p_simd_rc on accelerator. Time: %0.9lfs FLOPS:%.5f GFLOPS\n", TIME(t1, t2), gflop*pthread_step/(TIME(t1, t2))); 

#if CHECK_RES
	        printf("Begin conv on cpu. \n");
			gettimeofday(&t1, NULL);

			int j;
			for(j = 0; j < Ro; j++)
				for(i = 0; i < 8; ++i)
					CaffeConv(input+j*Ci*Ni*32 + 4*Ci*Ni*i, weight, test_output+j*Co*No*32 + 4*Co*No*i);
			gettimeofday(&t2, NULL);

			printf("Finish conv on cpu. Time: %0.9lfs FLOPS:%.5f GFLOPS\n", TIME(t1, t2), gflop/(TIME(t1, t2)));
			printf("2 #### check GEMM Cversion VS Correct Cversion.\n");
			check(output, test_output);
#endif
		}
               
	free(input);
	free(weight);
	free(output);
	free(test_output);
	for(i = 0; i < NUM_CG; ++i)
		free(params[i]);
	return 0;
	
}

int init(Type* input, Type* weight, Type* output, Type* test_output)
{
  int i;
  srand((unsigned int) time (NULL));  
  for(i=0; i < 32*Ni*Ri*Ci; i++){
    input[i] = i%100*0.01; //rand()*1.0/RAND_MAX;
    //input[i] = rand()*1.0/RAND_MAX;
  }
  for(i=0; i< Ni*No*K*K; i++){
    weight[i] = i%100 * 0.01; //rand()*1.0/RAND_MAX;
    //weight[i] = rand()*1.0/RAND_MAX;
  }
  for(i=0; i< 32*No*Ro*Co; i++){
    output[i] = 0.0;
    test_output[i] = 0.0;
  }
  return 0;
}

int check(Type* output, Type* coutput){
  int i;
  int n=0;
  for(i=0; i<32*No*Ro*Co; i++){
    Type diff = *(output+i)-*(coutput+i);
    if(diff>1e-10||diff<-1e-10){
      printf("Wrong at %d, %.15lf, %.15lf\n", i, *(output+i), *(coutput+i));
      n++;
      if(n>64) break;
    }
  }
  Type sum1 = 0.0, sum2 = 0.0;
  for(i=0; i<32*No*Ro*Co; i++){
    sum1 += *(output+i);
    sum2 += *(coutput+i);
  }
  printf("sum1 %lf sum2 %lf\n", sum1, sum2);
}

