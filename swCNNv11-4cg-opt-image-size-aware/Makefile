MCC = swcc 
CC = sw5cc.new
asm_new: example_asm
all: example 
dots: core_functions.S


K=3 
Ni=384
No=256
Ro=16
bCo=8

CFLAGS = -O3 -msimd
NOCFLAGS = -O0 -msimd
LIBFLAGS = -hybrid -lslave -allshare

example_asm: test.o core_functions.o gemm_asm.o dma.o
	$(CC) $(LIBFLAGS) test.o core_functions.o dma.o gemm_asm.o -o example_asm
	
example:test.o core_functions.o gemm.o
	$(CC) $(LIBFLAGS) test.o core_functions.o gemm.o -o example

test.o:test.c core_functions.h def.h
	$(CC) $(CFLAGS) -host -c test.c -o test.o

gemm_asm.o: gemm.S
	$(CC) $(CFLAGS) -slave -c gemm.S -o gemm_asm.o

gemm.o:gemm.c gemm.h
	$(CC) $(CFLAGS) -slave -c gemm.c -o gemm.o

core_functions.o: core_functions.c core_functions.h def.h gemm.h
	$(CC) $(CFLAGS) -slave -c core_functions.c -o core_functions.o

core_functions.S: core_functions.c
	$(CC) $(CFLAGS) -slave -S $^ -o $@

dma.o: dma.c
	$(CC) $(CFLAGS) -slave -c dma.c -o dma.o

run:
	time bsub -b -I -m 1 -p -q q_sw_yfb -node 941 -host_stack 1024 -share_size 6000 -n 1 -o run.log -cgsp 64 ./example -perf

run_new:
	time bsub -b -I -m 1 -p -q q_sw_yfb -host_stack 2048 -sw3run ./sw3run-all -sw3runarg "-a 1" -cross_size 28000 -n 1 -o run.log -cgsp 64 ./example_asm $K $(Ro) $(bCo) $(Ni) $(No) 
																										                                        #K Ro bCo Co Ni No
clean:
	-rm example_asm example *.o


