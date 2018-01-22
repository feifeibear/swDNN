/*************************************************************************
	> File Name: gemm.h
	> Author: ma6174
	> Mail: ma6174@163.com 
	> Created Time: Mon 29 Aug 2016 01:05:51 PM CST
 ************************************************************************/

#ifndef _GEMM_H_
#define _GEMM_H_
#include "def.h"

void gemm(Type* input, Type* weight, Type* output, int M, int Mld, int N, int K, int rid, int cid);
#endif
