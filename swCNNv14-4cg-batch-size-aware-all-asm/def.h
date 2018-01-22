#ifndef _DEF_H_
#define _DEF_H_
#include "simd.h"
//#define Ni 64 
//#define Ri 32 
//#define Ci 32 
//#define No 64  //hard coded for now
//#define K 4 
//#define Ro (Ri-K+1)
//#define Co (Ci-K+1)
////#define vB 4
//#define B 32 

#define Type double 
#define SIMDType doublev4
#define THREADS 64 

typedef struct ConvData_st{
  Type* input; //0
  Type* weight; //8
  Type* output; //16
  //   24,  28,  32,  36, 40,  44,  48, 52, 56 
  int _Ni, _Ri, _Ci, _No, _K, _Ro, _Co, _B, _Costride, _bCo;
}ConvData;

#endif
