## swDNN: A Library for Accelerating Deep Learning Applications on Sunway TaihuLight Supercomputer
This repo contains code for the paper swDNN: A Library for Accelerating Deep Learning Applications on Sunway TaihuLight.

We report our work on swDNN, which is a highly- efficient library for accelerating deep learning applications. We derive a performance model that guides us in the process of identifying the most suitable approach for mapping the convolutional neural networks (CNNs) onto bottom hardware. By performing a systematic optimization that explores major factors, such as organization of convolution loops, blocking techniques, register data communication schemes, as well as reordering strategies for the two pipelines of instructions, we manage to achieve a double-precision performance over 1.6 Tflops for the convolution kernel, achieving 54% of the theoretical peak. Compared with Tesla K40m with cuDNNv5, swDNN results in 1.91-9.75x performance speedup in an evaluation with over 100 parameter configurations.

## Directories
swCNNv10-4cg-image-size-aware: contains code for Algorithm 1 in the paper.
swCNNv11-4cg-opt-image-size-aware: contains code for Algorithm 1 in the paper after promoting the DMA operation to
outer loop.
swCNNv13-4cg-batch-size-aware: contains code for Algorithm 2 in the paper.
swCNNv12-4cg-opt-batch-size-aware: contains code for Algorithm 2 in the paper after promoting the DMA operation to
outer loop.
swCNNv14-4cg-batch-size-aware-all-asm: contains code for Algorithm 1 with all CPE code in ASM.

##citation
Fang J, Fu H, Zhao W, et al. swDNN: A Library for Accelerating Deep Learning Applications on Sunway TaihuLight[C]//Parallel and Distributed Processing Symposium (IPDPS), 2017 IEEE International. IEEE, 2017: 615-624.

##contact
Jiarui Fang (fang_jiarui@163.com)