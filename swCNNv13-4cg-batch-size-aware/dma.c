#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <slave.h>
#include <dma.h>
#include "def.h"

#define SIMDSIZE 4

void dma_read(ConvData* p)
{
  int id = athread_get_id(-1);
  int rid = id/8, cid = id%8;
  int t;
  int i;

  int input_calc_index=1, input_load_index=0;
  int output_calc_index=1, output_load_index=0, output_write_index=1;

  int Ni = p->_Ni;
  int B  = p->_B;

  Type* local_input  = (Type*) ldm_malloc(sizeof(Type)*Ni/8*B/8*2);

  volatile int  replyget_weight = 0, replyget_input=0, replyget_output=0, replyput = 0;
  dma_desc dma_get_input, dma_get_weight, dma_get_output, dma_put_output;

  dma_set_op(&dma_get_input, DMA_GET);
  dma_set_mode(&dma_get_input, PE_MODE);
  dma_set_reply(&dma_get_input, &replyget_input);

  dma_set_size(&dma_get_input, B/8*Ni/8*sizeof(Type));
  dma_set_bsize(&dma_get_input, B/8*sizeof(Type));
  dma_set_stepsize(&dma_get_input, B/8*7*sizeof(Type));

  Type* inputptr = p->input;
  int jj;
  for(t = 0; t < 20; t ++)
  {
      dma(dma_get_input, (long)(inputptr), (long)(local_input));
      dma_wait(&replyget_input, 1); replyget_input = 0;
  }
  ldm_free(local_input, sizeof(Type)*Ni*B/64*2);

  return;
}


