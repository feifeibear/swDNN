#ifndef _DMA_H_INCLUDED
#define _DMA_H_INCLUDED

#include <stdio.h>
#include <simd.h>

/* 
	DMA intrinsic in SW-3A
	     --by WANGF2010-3-22 
*/

typedef int dma_desc __attribute__ ((__mode__(__V4SI__)));
#if 0
typedef enum {
	PE_MODE,
	BCAST_MODE,
	ROW_MODE,
	BROW_MODE,
	RANK_MODE
} DMA_MODE;

typedef enum {
	DMA_PUT,
	DMA_GET,
	DMA_PUT_P,
	DMA_GET_P,
	DMA_BARRIER = 5
} DMA_OP;
#endif

#define dma(n,x,y)	__builtin_sw64_dma(n,x,y)

typedef union dma_desc_u {
        dma_desc dma_v;
        struct packed {
                unsigned int	dma_size          : 24;
                unsigned char	pad1;
                unsigned int	stride_bsize      : 20;
                unsigned int	pad2              : 4;
                unsigned int	dma_op            : 4;
                unsigned int	dma_mode          : 4;
                unsigned short	reply_addr        :16;
                unsigned char	pad3;
                unsigned char	bcast_mask;
                unsigned int	stride_length     :32;
        }packed;
} dma_desc_u;

static __inline intv4 
dma_set_size(dma_desc *a, unsigned int size)
{
//	dma_desc_u __u;
//	__u.dma_v = *a;
	((dma_desc_u *)a)->packed.dma_size = size;
//	*a = __u.dma_v;
}

static __inline intv4 
dma_set_reply(dma_desc *a, unsigned int volatile *reply)
{
	((dma_desc_u *)a)->packed.reply_addr = (unsigned short)(long)reply;
}

static __inline intv4 
dma_set_op(dma_desc *a, unsigned int op)
{
	((dma_desc_u *)a)->packed.dma_op = op;
}

static __inline intv4 
dma_set_mode(dma_desc *a, unsigned int mode)
{
	((dma_desc_u *)a)->packed.dma_mode = mode;
}

static __inline intv4 
dma_set_mask(dma_desc *a, unsigned char mask)
{
	((dma_desc_u *)a)->packed.bcast_mask = mask;
}

static __inline intv4 
dma_set_bsize(dma_desc *a, unsigned int bsize)
{
	((dma_desc_u *)a)->packed.stride_bsize = bsize;
}

static __inline intv4 
dma_set_stepsize(dma_desc *a, unsigned int bleng)
{
	((dma_desc_u *)a)->packed.stride_length = bleng;
}

static __inline intv4 
dma_descriptor_init(dma_desc *a, unsigned int *reply)
{
	((dma_desc_u *)a)->packed.dma_size = 256;
	((dma_desc_u *)a)->packed.reply_addr = (unsigned short)(long)reply; 
	((dma_desc_u *)a)->packed.dma_op = DMA_GET;
	((dma_desc_u *)a)->packed.dma_mode = PE_MODE;
	((dma_desc_u *)a)->packed.bcast_mask = 0;
	((dma_desc_u *)a)->packed.stride_bsize = 0; 
	((dma_desc_u *)a)->packed.stride_length = 0;
}

static __inline intv4 
dma_wait(unsigned int volatile *reply, int count)
{
	while(*reply != count) {};
}

#endif	/*_DMA_H_INCLUDED*/
