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


//#define Ro 8 
//#define Co 8
//#define Ni 128 
//#define Ri (Ro+K-1) 
//#define Ci (Co+K-1)
//#define No 128 
//#define K  3 
////#define vB 4
//#define B  128 

int K;	//shall not be too large
int Ro; 
int Co;	
int Ri;	
int Ci;	
int Ni;	//must be 32x for 4x4 reg group
int No; //must 32x	 
int B;	//must be 128x


extern SLAVE_FUN(convforward)();
extern SLAVE_FUN(convforward_p_simd_rc_c)();
extern SLAVE_FUN(convforward_p_simd_rc)();
extern SLAVE_FUN(dma_read)();

int init();
int check(Type *output, Type* coutput);
void naiveConv(Type*, Type*, Type*);

//conv with caffe data structure
//B, Ni, Ci, Ri
inline int inGetIdx(int cB, int cNi, int cCi, int cRi){
  return cB + cNi*B + cCi*B*Ni + cRi*Ci*B*Ni;
}

//B, No, Co, Ro
inline int outGetIdx(int cB, int cNo, int cCo, int cRo){
  return cB + cNo*B + cCo*B*No + cRo*Co*No*B;
}

//Ni, No, K, K
inline int weightGetIdx(int cNi, int cKc, int cKr, int cNo){
  return cNi + cNo*Ni + (cKr*K + cKc)*No*Ni;
}

void CaffeConv(Type* input, Type* weight, Type* output){
  int cB,cNo,cNi,cRo,cCo,cKr,cKc;
  for(cRo=0; cRo<Ro; cRo++)
    for(cCo=0; cCo<Co; cCo++){
      for(cKr = 0 ;cKr<K; cKr++)
		for(cKc = 0; cKc<K; cKc++){
			for(cNo=0; cNo<No; cNo++){
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
  printf("Matrix of size %d X %d\n", B, Ni);
  printf("Begin Test Multiple DMA Read\n");

  gettimeofday(&t1, NULL);
  for(s = 0; s < STEPS; s ++)
  {
    athread_spawn(dma_read, p);
    athread_join();
  }
  gettimeofday(&t2, NULL);
  float tt = TIME(t1,t2);

  printf("Total Read Time:%0.9lfs, bandwidth is :%0.9lf GBps\n", tt, 
		  ((B*Ni)*sizeof(Type)*20*STEPS)/tt/1000000000);
}

#define pthread_step 100 
int conv_forward_4cg(void* ptr){
	int i;
	ConvData* param = (ConvData*)ptr;
	athread_init();
	for(i = 0 ; i < pthread_step; ++ i){
		athread_spawn(convforward_p_simd_rc_c, param);
		athread_join();
	}
}


int main(int argc, char **argv)
{
	int s, i;
	struct timeval t1, t2;	
	
	K	= atoi(argv[1]);
	Ro	= atoi(argv[2]);
	Co  = atoi(argv[3]);
	Ni	= atoi(argv[4]);
	No	= atoi(argv[5]); 
	B	= atoi(argv[6]);
	Ri	= (Ro+K-1);
	Ci	= (Co+K-1);

    float gflop = 2.0*(No*Ro*Co*1.0/1000)*(K*K*Ni*1.0/1000)*B*1.0/1000;

    Type* input = (Type*)malloc(sizeof(Type)*B*Ni*Ri*Ci);
    Type* weight = (Type*)malloc(sizeof(Type)*No*Ni*K*K);
    Type* output = (Type*)malloc(sizeof(Type)*B*No*Ro*Co);
    Type* test_output = (Type*)malloc(sizeof(Type)*B*No*Ro*Co);


	#define NUM_CG 4
	ConvData* params[NUM_CG];
	for(i = 0; i < NUM_CG; ++i)
		params[i] = malloc(sizeof(ConvData));
	pthread_t pthread_handler[NUM_CG];


    printf("B=%d, Ni=%d, No=%d, Ri=%d, Ci=%d, Ro=%d, Co=%d, K=%d\n",B, Ni, No, Ri, Ci, Ro, Co, K);
    printf("Init Data\n");

    init(input, weight, output, test_output);
     

	athread_init();
    for(s = 0; s < TEST_STEPS; s ++)
	{ 
 
	  int Costride = (64*55*1024/8-Ni*B*2-Ni*No*K*2)/(No*B)-(K-1);
	  printf("Costride is %d\n", Costride);
      assert(Costride > 0);
	  int ldm_consume = 8*(Ni*No*K*2 + No*B*(Costride+K-1) + Ni*B*2);
	  printf("ldm comsumption is %d\n", ldm_consume/64);
	  assert(ldm_consume < 64*1024*64);
       
	  for(i = 0; i < NUM_CG; ++i){ 
        params[i]->input = input + i*(Ro/4)*B*Ci*Ni;
        params[i]->weight = weight;
        params[i]->output = output + i*(Ro/4)*B*Co*No;
	    params[i]->_Ni = Ni;
	    params[i]->_Ri = Ro/4+K-1;
	    params[i]->_Ci = Ci;
	    params[i]->_No = No;
	    params[i]->_K = K;
	    params[i]->_Ro = Ro/4;
	    params[i]->_Co = Co;
	    params[i]->_B = B;
	    params[i]->_Costride = Costride;
	  }
	  DMA_banchmark(params[0]);


        printf("Begin ASM on accelerator.\n");
		gettimeofday(&t1, NULL);
		for(i = 0 ; i < NUM_CG; ++i){
			pthread_create(&pthread_handler[i], NULL, conv_forward_4cg, (void*)params[i]);
		}
		for(i = 0 ; i < NUM_CG; ++i){
			pthread_join(pthread_handler[i], NULL);
		}
		gettimeofday(&t2, NULL);
		printf("Finish conv_p_simd_rc on accelerator. Time: %0.9lfs FLOPS:%.5f GFLOPS\n", TIME(t1, t2), gflop*pthread_step/(TIME(t1, t2))); 
#ifdef CHECK
	    printf("Begin conv on cpu. \n");
		gettimeofday(&t1, NULL);
		CaffeConv(input, weight, test_output);
        gettimeofday(&t2, NULL);
		printf("Finish conv on cpu. Time: %0.9lfs FLOPS:%.5f GFLOPS\n", TIME(t1, t2), gflop/(TIME(t1, t2)));

		//CaffeConv2(input, weight, output);
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
  for(i=0; i < B*Ni*Ri*Ci; i++){
    input[i] = i%100*0.01; //rand()*1.0/RAND_MAX;
    //input[i] = rand()*1.0/RAND_MAX;
  }
  for(i=0; i< Ni*No*K*K; i++){
    weight[i] = i%100 * 0.01; //rand()*1.0/RAND_MAX;
    //weight[i] = rand()*1.0/RAND_MAX;
  }
  for(i=0; i< B*No*Ro*Co; i++){
    output[i] = 0.0;
    test_output[i] = 0.0;
  }
  return 0;
}
int check(Type* output, Type* coutput){
  int i;
  int n=0;
  for(i=0; i<B*No*Ro*Co; i++){
    Type diff = *(output+i)-*(coutput+i);
    if(diff>1e-10||diff<-1e-10){
      printf("Wrong at %d, %.15lf, %.15lf\n", i, *(output+i), *(coutput+i));
      n++;
      if(n>64) break;
    }
  }
  Type sum1 = 0.0, sum2 = 0.0;
  for(i=0; i<B*No*Ro*Co; i++){
    sum1 += *(output+i);
    sum2 += *(coutput+i);
  }
  printf("sum1 %lf sum2 %lf\n", sum1, sum2);
}
/*int check(Type *value)
{
	Type sum = 0;
	int i,j,k,t;
	for(t = 0; t < THREADS; t ++)
		for(k = 0; k < NZ+2; k ++)
			for(j = 0; j < NY+2; j ++)
				for(i = 0; i < NX+2*VS; i ++)
				{
					sum += value[(((t*(NZ+2)+k)*(NY+2))+j)*(NX+2*VS)+i];	
				}
	printf("check result: %lf %d %lf\n", sum, THREADS, sum/THREADS);
}*/

void naiveConv(Type* input, Type* weight, Type* output){
  int cB,cNo,cNi,cRo,cCo,cK1,cK2;
  for (cB=0; cB<B; cB++){
    for(cNo=0; cNo<No; cNo++){
      Type* tmpOutputImage = output+cB*No*Ro*Co+cNo*Ro*Co;
      for(cNi=0; cNi<Ni; cNi++){
        Type* tmpInputImage = input+cB*Ni*Ri*Ci+cNi*Ri*Ci;
        Type* tmpWeight = weight+cNo*Ni*K*K+cNi*K*K;
        
        for (cRo=0; cRo<Ro; cRo++){
          for(cCo=0; cCo<Co; cCo++){
            for (cK1=0; cK1<K; cK1++){
              for(cK2=0; cK2<K; cK2++){
                *(tmpOutputImage+cRo*Co+cCo) += *(tmpInputImage+(cRo+cK1)*Ci+(cCo+cK2)) * (*(tmpWeight+cK1*K+cK2));
              }
            }
          }
        }

      }
    }
  }
}
