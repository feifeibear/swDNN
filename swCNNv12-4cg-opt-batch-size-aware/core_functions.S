	.set noreorder
	.set noat
	.arch sw3
	#  /usr/sw-mpp/swcc/lib/gcc-lib/sw_64-swcc-linux/5.421-sw-460/be::5.421-sw-460

	#-----------------------------------------------------------
	# Compiling core_functions.c (/tmp/ccI#.MaZIrp)
	#-----------------------------------------------------------

	#-----------------------------------------------------------
	# Options:
	#-----------------------------------------------------------
	#  Target:SW3, ISA:ISA_1, Endian:little, Pointer Size:64
	#  -O3	(Optimization level)
	#  -g0	(Debug level)
	#  -m2	(Report advisories)
	#-----------------------------------------------------------

	.file	1	"/home/export/online1/qhtest/swqh/USER-TSINGHUA/fjr/100Gcnn/swCNNv5.5/core_functions.c"
	.file	2	"/usr/sw-mpp/swcc/sw5gcc-binary/bin/../lib/gcc/alphaev6-unknown-linux-gnu/4.1.2/../../../../alphaev6-unknown-linux-gnu/sys-include/sys/sysmacros.h"
	.file	3	"/usr/sw-mpp/swcc/lib/gcc-lib/sw_64-swcc-linux/5.421-sw-460/include/simd.h"
	.file	4	"/usr/sw-mpp/swcc/lib/gcc-lib/sw_64-swcc-linux/5.421-sw-460/include/dma.h"


	.section .tdata, "waT", "progbits"
	.align	0

	.section .tdata_local_fix, "waT", "progbits"
	.align	5

	.section .text1, "ax", "progbits"
	.align	4

	.section .bss, "wa", "nobits"
	.align	5

	.section .rodata, "a", "progbits"
	.align	5

	.section .bss
	.org 0x0
	.align	0
	.type	anon64_122, @object
	.size	anon64_122, 32
anon64_122:	# 0x0
	.skip 32
	.org 0x20
	.align	0
	.type	anon65_123, @object
	.size	anon65_123, 32
anon65_123:	# 0x20
	.skip 32
	.org 0x40
	.align	0
	.type	anon66_124, @object
	.size	anon66_124, 32
anon66_124:	# 0x40
	.skip 32
	.org 0x60
	.align	0
	.type	anon67_125, @object
	.size	anon67_125, 32
anon67_125:	# 0x60
	.skip 32
	.org 0x80
	.align	0
	.type	anon68_126, @object
	.size	anon68_126, 32
anon68_126:	# 0x80
	.skip 32
	.org 0xa0
	.align	0
	.type	anon69_127, @object
	.size	anon69_127, 32
anon69_127:	# 0xa0
	.skip 32
	.org 0xc0
	.align	0
	.type	anon70_128, @object
	.size	anon70_128, 32
anon70_128:	# 0xc0
	.skip 32
	.org 0xe0
	.align	0
	.type	anon71_129, @object
	.size	anon71_129, 32
anon71_129:	# 0xe0
	.skip 32
	.org 0x100
	.align	0
	.type	anon72_130, @object
	.size	anon72_130, 32
anon72_130:	# 0x100
	.skip 32
	.org 0x120
	.align	0
	.type	anon73_131, @object
	.size	anon73_131, 32
anon73_131:	# 0x120
	.skip 32
	.org 0x140
	.align	0
	.type	anon74_132, @object
	.size	anon74_132, 32
anon74_132:	# 0x140
	.skip 32
	.org 0x160
	.align	0
	.type	anon75_133, @object
	.size	anon75_133, 32
anon75_133:	# 0x160
	.skip 32
	.org 0x180
	.align	0
	.type	anon76_134, @object
	.size	anon76_134, 32
anon76_134:	# 0x180
	.skip 32
	.org 0x1a0
	.align	0
	.type	anon77_135, @object
	.size	anon77_135, 32
anon77_135:	# 0x1a0
	.skip 32
	.org 0x1c0
	.align	0
	.type	anon78_136, @object
	.size	anon78_136, 32
anon78_136:	# 0x1c0
	.skip 32
	.org 0x1e0
	.align	0
	.type	anon79_137, @object
	.size	anon79_137, 32
anon79_137:	# 0x1e0
	.skip 32
	.org 0x200
	.align	0
	.type	anon80_138, @object
	.size	anon80_138, 32
anon80_138:	# 0x200
	.skip 32
	.org 0x220
	.align	0
	.type	anon81_139, @object
	.size	anon81_139, 32
anon81_139:	# 0x220
	.skip 32
	.org 0x240
	.align	0
	.type	anon82_140, @object
	.size	anon82_140, 32
anon82_140:	# 0x240
	.skip 32
	.org 0x260
	.align	0
	.type	anon83_141, @object
	.size	anon83_141, 32
anon83_141:	# 0x260
	.skip 32
	.section .text1

	# Program Unit: convforward_p_simd_rc_c
	.align 4
	.ent	convforward_p_simd_rc_c#
	.globl	convforward_p_simd_rc_c
convforward_p_simd_rc_c:	# 0x0
	# anon13 = 1296
	# anon14 = 1312
	# anon15 = 1252
	# anon16 = 1260
	# anon17 = 1256
	# anon18 = 1284
	# anon19 = 1288
	# anon21 = 1292
	# anon22 = 1248
	# anon23 = 1208
	# anon24 = 1212
	# anon25 = 1280
	# anon26 = 1176
	# anon27 = 1164
	# anon28 = 1160
	# anon29 = 1156
	# anon30 = 1276
	# anon31 = 1272
	# anon32 = 1316
	# anon33 = 1600
	# anon34 = 1152
	# anon35 = 1148
	# anon36 = 1144
	# anon37 = 1140
	# anon38 = 1136
	# anon39 = 1132
	# anon40 = 1128
	# anon41 = 1124
	# anon42 = 1120
	# anon43 = 1112
	# anon44 = 1104
	# anon45 = 1096
	# anon46 = 1088
	# anon47 = 36
	# anon48 = 32
	# anon49 = 64
	# anon50 = 96
	# anon51 = 128
	# anon52 = 160
	# anon53 = 1172
	# anon54 = 1168
	# anon55 = 1264
	# anon56 = 1192
	# anon57 = 1200
	# anon58 = 1472
	# anon59 = 1344
	# anon60 = 1304
	# anon61 = 1328
	# anon62 = 1320
	# anon63 = 192
	# reply = 1624
	# count = 1620
	# reply = 1608
	# count = 1616
	# reply = 1240
	# count = 1232
	# reply = 1224
	# count = 1216
	# reply = 1184
	# count = 1180
	# a = 712
	# bleng = 704
	# a = 728
	# bsize = 720
	# a = 744
	# size = 736
	# a = 760
	# bleng = 752
	# a = 776
	# bsize = 768
	# a = 792
	# size = 784
	# a = 808
	# bleng = 800
	# a = 824
	# bsize = 816
	# a = 840
	# size = 832
	# a = 856
	# bleng = 848
	# a = 872
	# bsize = 864
	# a = 888
	# size = 880
	# a = 904
	# reply = 896
	# a = 920
	# mode = 912
	# a = 936
	# op = 928
	# a = 952
	# reply = 944
	# a = 968
	# mode = 960
	# a = 984
	# op = 976
	# a = 1000
	# reply = 992
	# a = 1016
	# mode = 1008
	# a = 1032
	# op = 1024
	# a = 1048
	# reply = 1040
	# a = 1064
	# mode = 1056
	# a = 1080
	# op = 1072
	# return_address = 0
	# _temp_gra_spill0 = 1632
	# _temp_gra_spill1 = 1640
	# _temp_gra_spill2 = 1648
	# _temp_gra_spill3 = 1656
	# _temp_gra_spill4 = 1664
	# _temp_gra_spill5 = 1672
	# _temp_gra_spill6 = 1680
	# _temp_gra_spill7 = 1688
	# _temp_gra_spill8 = 1696
	# _temp_gra_spill9 = 1704
	# _temp_gra_spill10 = 1712
	# _temp_gra_spill11 = 1720
	# _temp_gra_spill12 = 1728
	# _temp_gra_spill13 = 1736
	# _temp_gra_spill14 = 1744
	# _temp_gra_spill15 = 1752
	# _temp_gra_spill16 = 1760
	.loc	1	18	0
#  14   * ************/
#  15  //#define DEBUG
#  16  #define SIMDSIZE 4
#  17  void convforward_p_simd_rc_c(ConvData* param)
#  18  {
.BB1_convforward_p_simd_rc_c:
	.prologue
	ldih	$gp,0($27)               	!gpdisp!1	# [0] 0
	ldi	$gp,0($gp)                	!gpdisp!1	# [1] 0
	
$ng..convforward_p_simd_rc_c:
	ldi	$sp,-1792($sp)            	# [3] 
.LCFI_convforward_p_simd_rc_c_adjustsp:
	stl	$26,0($sp)                	# [4] return_address
.LCFI_convforward_p_simd_rc_c_store26:
	stl	$15,1656($sp)             	# [4] _temp_gra_spill3
	.frame $15,1792,$26,0
	.mask 0x4008000,-1792
	stl	$14,1664($sp)             	# [5] _temp_gra_spill4
	stl	$13,1672($sp)             	# [5] _temp_gra_spill5
#	.spillsp $15, 0
	stl	$12,1680($sp)             	# [6] _temp_gra_spill6
#	.spillsp $14, 0
	stl	$11,1688($sp)             	# [6] _temp_gra_spill7
#	.spillsp $13, 0
	stl	$10,1640($sp)             	# [7] _temp_gra_spill1
#	.spillsp $12, 0
	stl	$9,1648($sp)              	# [7] _temp_gra_spill2
#	.spillsp $11, 0
	stl	$16,1776($sp)             	# [8] param
	.loc	1	22	0
#  19    int cB, cNi, cRi, cCi, cKr, cKc, ccCore, crCore, cNo;
#  20    int ii, jj, cRo, cCo;
#  21    int CoStart;
#  22    int id = athread_get_id(-1);
#	.spillsp $10, 0
	ldi	$16,-1($31)               	# [8] 
#	.spillsp $9, 0
	.globl	athread_get_id
	bsr	$26,athread_get_id        	# [8] athread_get_id
.BB2_convforward_p_simd_rc_c:
	.loc	1	27	0
#  23    int cid = id%8, rid = id/8;
#  24    int input_calc_index=1, input_load_index=0;
#  25    int i, j;
#  26    int Ni, Ri, Ci, No, K, Ro, Co, B;
#  27    Ni = param->_Ni;
	ldl	$28,1776($sp)             	# [0] param

	sra	$0, 3, $3 #rid
	and	$0, 7, $1 #cid
	ldw	$16,24($28)#$16<-Ni               	# [3] Ni id:602
	stl	$16,1720($sp)#Ni             	# [6] _temp_gra_spill11
	stw	$16,1152($sp)#Ni             	# [7] anon34
	stw	$31,1272($sp)#1             	# [8] anon31
	ldw	$2,28($28)#Ri                	# [8] Ri id:603
	stw	$2,1148($sp)#Ri              	# [12] anon35
	ldw	$4,32($28)#Ci                	# [12] Ci id:604
	stw	$4,1144($sp)#Ci              	# [16] anon36
	stw	$3,1156($sp)#rid              	# [17] anon29
	mov	1,$3                      	# [17] 
	stw	$0,1164($sp)              	# [18] anon27
	ldw	$2,36($28)                	# [18] No id:605
	stw	$2,1140($sp)              	# [22] anon37
	#subw	$31,$1,$2                	# [22] $2 = -cid 
	stw	$3,1276($sp)#?? 1              	# [23] anon30 1
	ldw	$3,40($28) #K                	# [23] id:606 K
	#selge	$0,$1,$2,$0             	# [23] id>=0 $0 = -cid/cid  
	mov	$1,$0 #$0<-cid
	stw	$3,1136($sp)#K              	# [27] anon38
	ldw	$1,44($28)#$0<-Ro                	# [27] id:607
	stw	$1,1132($sp)#cid              	# [31] anon39
	stw	$0,1160($sp)#cid              	# [32] anon28
	ldw	$0,48($28)#$0<-Co                	# [32] id:608
	stw	$0,1128($sp)#Co              	# [36] anon40
	ldw	$27,52($28)#B               	# [36] id:609
	mull	$16,$27,$16#$16<-Ni*B              	# [39] 
	stl	$27,1728($sp)#B             	# [39] _temp_gra_spill12
	stw	$27,1124($sp)#B             	# [40] anon41
	ldw	$28,56($28)#$28=CoStride               	# [40] id:610
	stw	$28,1120($sp)#CoStride             	# [44] anon42
	##s8addl	$16,$31,$16            	# [46] 
	##srl	$16,6,$16                 	# [47] 
	##addl	$16,$16,$16              	# [48] 
	srl	$16, 2, $16 #$16<-Ni*B/4
	stl	$16,1704($sp)             	# [49] _temp_gra_spill9
	.globl	ldm_malloc
	bsr	$26,ldm_malloc            	# [49] ldm_malloc
.BB3_convforward_p_simd_rc_c:
	.loc	1	41	0
#  39    int local_input_size = Ni*B/8/8/SIMDSIZE;
#  40  //No, Ni, K, K
#  41    Type* local_weight = (Type*) ldm_malloc(sizeof(Type)*Ni*No/8/8*K);
	ldw	$1,1140($sp)#$1<-No              	# [0] anon37
	ldl	$28,1720($sp) #$28=Ni            	# [0] _temp_gra_spill11
	ldih	$gp,0($26)#pc jump               	!gpdisp!3	# [0] 0
	ldw	$27,1124($sp)#$27<-B             	# [1] anon41
	ldw	$2,1152($sp)#$2<-Ni              	# [1] anon34
	ldi	$gp,0+8($gp)#??              	!gpdisp!3	# [1] 0
	mull	$28,$1,$28 #$28=CoStride*No               	# [3] 
	stl	$1,1736($sp)#No              	# [3] _temp_gra_spill13
	mulw	$27,$2,$27  #$27=Ni*B             	# [4] 
	stl	$0,1112($sp)#cid              	# [5] anon43
	ldw	$16,1136($sp)#$16=K             	# [5] anon38
	#s8addl	$28,$31,$28            	# [10] 
	#srl	$28,6,$28                 	# [11] 
	srl	$28,2,$28#CoStride*No/4                	# [11] 
	addw	$27,255,$0 #$0=Ni*B+255 ??              	# [11] 
	stl	$27,1752($sp)#Ni*B             	# [11] _temp_gra_spill15
	mull	$16,$28,$16 #$16=K*Ni*No/4              	# [12] 
	#selge	$27,$27,$0,$27          	# [12] 
	sra	$27,8,$27 #$27=Ni*B/256                 	# [13] 
	stw	$27,1104($sp)             	# [14] anon44
	stl	$27,1744($sp)             	# [14] _temp_gra_spill14
	stl	$16,1712($sp)#K*Ni*No/4             	# [19] _temp_gra_spill10
	bsr	$26,ldm_malloc            	# [19] ldm_malloc
.BB4_convforward_p_simd_rc_c:
	.loc	1	43	0
#  42  //B, No, Co, Ro
#  43    SIMDType* local_output = (SIMDType*) ldm_malloc(sizeof(Type)*No*B/8/8*CStride);
	ldl	$27,1728($sp) #$27=B            	# [0] _temp_gra_spill12
	ldl	$1,1736($sp) #$1=No              	# [0] _temp_gra_spill13
	mov	$0,$28     #?? Ni+B+255               	# [0] 
	ldih	$gp,0($26)               	!gpdisp!4	# [0] 0
	stl	$28,1096($sp)             	# [1] anon45
	ldw	$16,1120($sp)#$16=CoStride             	# [1] anon42
	ldi	$gp,0+12($gp)             	!gpdisp!4	# [1] 0
	mull	$27,$1,$27 #$27=B*No               	# [3] 
	#s8addl	$27,$31,$27            	# [10] 
	#srl	$27,6,$27                 	# [11] 
	srl	$27,3,$27 #$27=B*No/4                 	# [11] 
	mull	$16,$27,$16 #$16=CoStride*B*No/4              	# [12] 
	stl	$16,1696($sp)             	# [19] _temp_gra_spill8
	bsr	$26,ldm_malloc            	# [19] ldm_malloc
.BB5_convforward_p_simd_rc_c:
#  81  
#  82  static __inline void 
#  83  dma_set_mode(dma_desc *a, unsigned int mode)
#  84  {
#  85  	((dma_desc_u *)a)->packed.dma_mode = mode;
	ldbu	$5,71($sp) #??              	# [0] anon49+7
#  99  
# 100  static __inline void 
# 101  dma_set_stepsize(dma_desc *a, unsigned int bleng)
# 102  {
# 103  	((dma_desc_u *)a)->packed.stride_length = bleng;
	ldw	$19,1124($sp) #$19=B             	# [0] anon41
	ldi	$1,-16($31)   #??            	# [0] 
	ldi	$4,-241($31)  #??            	# [0] 
	ldw	$20,1152($sp) #$20=Ni            	# [1] anon34
	ldw	$10,1140($sp) #$10=No            	# [1] anon37
	ldi	$7,-16($31)   #??            	# [1] 
	ldi	$13,160($sp)  #??            	# [1] anon52
	ldbu	$6,103($sp) #??             	# [2] anon50+7
	ldbu	$3,135($sp) #??             	# [2] anon51+7
	ldi	$11,160($sp) #??              	# [2] anon52
	ldi	$22,32($sp)  #??             	# [2] anon48
	and	$5,$1,$5     #??             	# [3] 
	ldbu	$1,167($sp)  #??            	# [3] anon52+7
	ldih	$gp,0($26)               	!gpdisp!5	# [3] 0
#  82    dma_set_size(&dma_put_output, B*No/8/8/SIMDSIZE*sizeof(SIMDType));
#  83    dma_set_bsize(&dma_put_output, B/SIMDSIZE/8*sizeof(SIMDType));
#  84    dma_set_stepsize(&dma_put_output, B/SIMDSIZE/8*7*sizeof(SIMDType));
#  85  
#  86    for(CoStart=0; CoStart<Co; CoStart+=CStride){
	mov	$31,$28                   	# [3] 
	or	$5,1,$5                    	# [4] 
	ldw	$2,64($sp)                	# [4] anon49
	ldi	$27,160($sp)              	# [4] anon52
	ldi	$24,160($sp)              	# [4] anon52
	and	$5,$4,$5                  	# [5] 
	stw	$31,36($sp)               	# [5] anon47
	and	$6,$7,$6                  	# [5] 
	ldi	$7,-16($31)               	# [5] 
	stb	$5,71($sp)                	# [6] anon49+7
	ldw	$16,68($sp)               	# [6] anon49+4
	and	$3,$7,$3                  	# [6] 
	or	$6,1,$6                    	# [6] 
	ldw	$5,96($sp)                	# [7] anon50
	stw	$31,32($sp)               	# [7] anon48
	or	$3,1,$3                    	# [7] 
	zap	$1,1,$1                   	# [7] 
	and	$6,$4,$6                  	# [8] 
	and	$3,$4,$3                  	# [8] 
	ldi	$4,96($sp)                	# [8] anon50
	ldi	$gp,0+56($gp)             	!gpdisp!5	# [8] 0
	stw	$31,1056($sp)             	# [11] mode
	stw	$31,1008($sp)             	# [12] mode
	ldw	$12,160($sp)              	# [12] anon52
	stb	$1,167($sp)               	# [13] anon52+7
	stb	$3,135($sp)               	# [13] anon51+7
	ldi	$1,64($sp)                	# [13] anon49
	ldi	$3,96($sp)                	# [13] anon50
	stb	$6,103($sp)               	# [14] anon50+7
	ldw	$21,128($sp)              	# [14] anon51
	ldw	$7,164($sp)               	# [15] anon52+4
	ldw	$17,132($sp)              	# [15] anon51+4
	ldw	$9,100($sp)               	# [16] anon50+4
	ldl	$6,1744($sp)              	# [16] _temp_gra_spill14
	s8addl	$6,$31,$6              	# [19] 
	stl	$0,1088($sp)              	# [20] anon46
	ldi	$0,64($sp)                	# [20] anon49
	s4addl	$6,$31,$6              	# [20] 
	stl	$1,1080($sp)              	# [21] a
	ldi	$1,64($sp)                	# [21] anon49
	stl	$0,1064($sp)              	# [22] a
	ldi	$0,36($sp)                	# [22] anon47
	stl	$1,1048($sp)              	# [23] a
	ldi	$1,96($sp)                	# [23] anon50
	stl	$0,1040($sp)              	# [24] reply
	ldi	$0,96($sp)                	# [24] anon50
	stl	$1,1032($sp)              	# [25] a
	mulw	$10,$20,$1               	# [25] 
	stl	$0,1016($sp)              	# [26] a
	ldi	$0,64($sp)                	# [26] anon49
	mulw	$19,$10,$10              	# [26] 
	.loc	1	85	0
	stl	$3,1000($sp)              	# [27] a
	.loc	1	67	0
	ldi	$3,64($sp)                	# [27] anon49
	.loc	1	73	0
	stl	$0,888($sp)               	# [28] a
	.loc	1	97	0
	ldi	$0,64($sp)                	# [28] anon49
	.loc	1	67	0
	stl	$3,872($sp)               	# [29] a
	.loc	1	103	0
	ldi	$3,96($sp)                	# [29] anon50
	.loc	1	97	0
	stl	$0,856($sp)               	# [30] a
	.loc	1	67	0
	ldi	$0,96($sp)                	# [30] anon50
	.loc	1	103	0
	stl	$3,840($sp)               	# [31] a
	.loc	1	67	0
	addw	$19,31,$3                	# [31] 
	stl	$0,824($sp)               	# [32] a
	.loc	1	103	0
	ldi	$0,128($sp)               	# [32] anon51
	.loc	1	67	0
	selge	$19,$19,$3,$19          	# [32] 
	ldi	$3,128($sp)               	# [32] anon51
	.loc	1	97	0
	stl	$4,808($sp)               	# [33] a
	.loc	1	67	0
	sra	$19,5,$19                 	# [33] 
	.loc	1	103	0
	addw	$10,255,$8               	# [33] 
	addw	$1,63,$4                 	# [33] 
	stl	$0,792($sp)               	# [34] a
	.loc	1	97	0
	ldi	$0,128($sp)               	# [34] anon51
	.loc	1	103	0
	selge	$10,$10,$8,$10          	# [34] 
	selge	$1,$1,$4,$1             	# [34] 
	.loc	1	67	0
	stl	$3,776($sp)               	# [35] a
	s8addl	$19,$31,$3             	# [35] 
	.loc	1	103	0
	sra	$10,8,$10                 	# [35] 
	sra	$1,6,$1                   	# [35] 
	.loc	1	97	0
	stl	$0,760($sp)               	# [36] a
	.loc	1	67	0
	addw	$20,7,$0                 	# [36] 
	s4addl	$3,$31,$3              	# [36] 
	.loc	1	103	0
	s8addl	$10,$31,$10            	# [36] 
	stl	$13,744($sp)              	# [37] a
	.loc	1	67	0
	selge	$20,$20,$0,$20          	# [37] 
	.loc	1	97	0
	ldi	$0,160($sp)               	# [37] anon52
	.loc	1	103	0
	s4addl	$10,$31,$10            	# [37] 
	.loc	1	67	0
	stl	$11,728($sp)              	# [38] a
	sra	$20,3,$20                 	# [38] 
	.loc	1	97	0
	sll	$19,5,$4                  	# [38] 
	.loc	1	103	0
	s8addl	$1,$31,$1              	# [38] 
	.loc	1	97	0
	stl	$0,712($sp)               	# [39] a
	.loc	1	67	0
	mov	$20,$0                    	# [39] 
	.loc	1	97	0
	s8subl	$4,$4,$4               	# [39] 
	.loc	1	47	0
	mov	1,$13                     	# [39] 
	.loc	1	67	0
	stw	$3,720($sp)               	# [40] bsize
	s8addl	$0,$31,$11             	# [40] 
	.loc	1	97	0
	s4subl	$0,$0,$18              	# [40] 
	.loc	1	73	0
	mov	$13,$8                    	# [40] 
	.loc	1	67	0
	stw	$3,768($sp)               	# [41] bsize
	.loc	1	97	0
	sll	$18,4,$18                 	# [41] 
	.loc	1	67	0
	stw	$3,864($sp)               	# [42] bsize
	.loc	1	97	0
	s8addl	$0,$18,$0              	# [42] 
	.loc	1	47	0
	mov	$13,$18                   	# [42] 
	.loc	1	97	0
	sextw	$3,$3                   	# [42] 
	.loc	1	67	0
	stw	$11,816($sp)              	# [43] bsize
	.loc	1	97	0
	sextw	$11,$11                 	# [43] 
	.loc	1	73	0
	stw	$6,880($sp)               	# [44] size
	.loc	1	67	0
	sextw	$6,$6                   	# [44] 
	.loc	1	103	0
	stw	$10,736($sp)              	# [45] size
	stw	$10,784($sp)              	# [46] size
	.loc	1	67	0
	sextw	$10,$10                 	# [46] 
	.loc	1	103	0
	stw	$1,832($sp)               	# [47] size
	.loc	1	67	0
	sextw	$1,$1                   	# [47] 
	.loc	1	97	0
	stw	$4,704($sp)               	# [48] bleng
	stw	$4,752($sp)               	# [49] bleng
	stw	$4,848($sp)               	# [50] bleng
	.loc	1	73	0
	stw	$8,1024($sp)              	# [51] op
	.loc	1	97	0
	ldi	$8,0($31)                 	# [51] 
	.loc	1	47	0
	stw	$18,1072($sp)             	# [52] op
	.loc	1	97	0
	ldi	$18,-1($31)               	# [52] 
	ldih	$8,-16($8)               	# [52] 
	stw	$0,800($sp)               	# [53] bleng
	ldih	$18,16($18)              	# [53] 
	and	$9,$8,$9                  	# [53] 
	and	$16,$8,$16                	# [53] 
	.loc	1	103	0
	stw	$4,76($sp)                	# [54] anon49+12
	stw	$4,140($sp)               	# [54] anon51+12
	.loc	1	97	0
	and	$3,$18,$3                 	# [54] 
	and	$17,$8,$17                	# [54] 
	.loc	1	103	0
	stw	$4,172($sp)               	# [55] anon52+12
	.loc	1	43	0
	ldi	$4,36($sp)                	# [55] anon47
	.loc	1	97	0
	and	$7,$8,$7                  	# [55] 
	and	$11,$18,$11               	# [55] 
	.loc	1	103	0
	stw	$0,108($sp)               	# [56] anon50+12
	.loc	1	73	0
	sth	$4,72($sp)                	# [56] anon49+8
	.loc	1	67	0
	ldi	$0,0($31)                 	# [56] 
	.loc	1	97	0
	or	$3,$16,$16                 	# [56] 
	.loc	1	73	0
	sth	$4,104($sp)               	# [57] anon50+8
	sth	$4,136($sp)               	# [57] anon51+8
	.loc	1	67	0
	ldi	$4,-1($31)                	# [57] 
	ldih	$0,-256($0)              	# [57] 
	ldih	$4,256($4)               	# [58] 
	and	$2,$0,$2                  	# [58] 
	and	$12,$0,$12                	# [58] 
	and	$21,$0,$21                	# [58] 
	and	$10,$4,$10                	# [59] 
	and	$5,$0,$0                  	# [59] 
	and	$6,$4,$6                  	# [59] 
	and	$1,$4,$1                  	# [59] 
	.loc	1	97	0
	or	$3,$17,$17                 	# [60] 
	or	$9,$11,$9                  	# [60] 
	.loc	1	67	0
	or	$10,$21,$21                	# [60] 
	or	$10,$12,$10                	# [60] 
	or	$0,$1,$0                   	# [61] 
	or	$2,$6,$2                   	# [61] 
	.loc	1	97	0
	or	$3,$7,$3                   	# [61] 
	.loc	1	85	0
	ldi	$8,160($sp)               	# [61] anon52
	.loc	1	73	0
	sth	$22,168($sp)              	# [62] anon52+8
	.loc	1	97	0
	stw	$16,68($sp)               	# [62] anon49+4
	.loc	1	73	0
	ldi	$12,128($sp)              	# [62] anon51
	.loc	1	85	0
	ldi	$6,32($sp)                	# [62] anon48
	.loc	1	97	0
	stw	$17,132($sp)              	# [63] anon51+4
	stw	$9,100($sp)               	# [63] anon50+4
	.loc	1	85	0
	ldi	$16,36($sp)               	# [63] anon47
	.loc	1	73	0
	ldi	$17,128($sp)              	# [63] anon51
	.loc	1	67	0
	stw	$21,128($sp)              	# [64] anon51
	stw	$10,160($sp)              	# [64] anon52
	.loc	1	85	0
	ldi	$9,36($sp)                	# [64] anon47
	ldi	$10,128($sp)              	# [64] anon51
	.loc	1	67	0
	stw	$0,96($sp)                	# [65] anon50
	stw	$2,64($sp)                	# [65] anon49
	.loc	1	97	0
	stw	$3,164($sp)               	# [66] anon52+4
	.loc	1	86	0
	ldw	$0,1128($sp)              	# [66] anon40
	ble	$0,.Lt_0_50434            	# [69] 
.BB6_convforward_p_simd_rc_c:
	ldi	$23,192($sp)              	# [0] anon63
	vfmov	$31,$14                 	# [0] 
	mov	16,$15                    	# [0] 
	mov	4,$7                      	# [0] 
	stl	$6,896($sp)               	# [1] reply
	stl	$8,904($sp)               	# [1] a
	ldi	$21,64($23)               	# [1] 
	ldi	$22,96($23)               	# [1] 
	stw	$31,912($sp)              	# [2] mode
	stl	$24,920($sp)              	# [2] a
	ldi	$23,32($23)               	# [2] 
	stw	$31,928($sp)              	# [3] op
	stl	$27,936($sp)              	# [3] a
	stl	$9,944($sp)               	# [4] reply
	stl	$10,952($sp)              	# [4] a
	stw	$31,960($sp)              	# [5] mode
	stl	$12,968($sp)              	# [5] a
	stw	$13,976($sp)              	# [6] op
	stl	$17,984($sp)              	# [6] a
	stl	$16,992($sp)              	# [7] reply
	br	$31,.Lt_0_50946            	# [7] 
	.align	4
.BB95_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_50946
	.loc	1	96	0
#  92        CiEnd = Ci;
#  93  
#  94      //input init
#  95      Type* input_ptr = param->input+cid*B/8+rid*Ni/8*B+(CoStart)*Ni*B;
#  96      for(cRo=0; cRo<Ro; ++cRo){
	ldw	$5,1120($sp) #$5=CStride              	# [0] anon42
	addw	$28,$5,$5 #CoStart+=CStride               	# [3] 
.Lt_0_51202:
#<loop> Part of loop body line 65536, head labeled .Lt_0_50946
	.loc	1	86	0
	ldw	$1,1128($sp) #$1 = Co              	# [0] anon40
	mov	$5,$28      #$28=CoStart              	# [0] 
	cmplt	$5,$1,$1    #CoStart < Co            	# [3] 
	## CoStart>=Cp the jmp to BB97
	beq	$1,.BB97_convforward_p_simd_rc_c 	# [4] 
.Lt_0_50946:
#<loop> Loop body line 86, nesting depth: 1, estimated iterations: 100
	ldw	$1,1152($sp)  #$1=Ni              	# [0] anon34
	ldw	$27,1156($sp) #$27=cid             	# [0] anon29
	mov	$31,$16       #$16=0            	# [0] 
	ldw	$25,1124($sp) #$25=B             	# [1] anon41
	ldw	$24,1160($sp) #$24=cid            	# [1] anon28
	ldw	$5,1120($sp)  #$5=CoStride              	# [2] anon42
	ldw	$3,1136($sp)  #$3=K            	# [2] anon38
	mulw	$27,$1,$27    #$27=cid*Ni           	# [3] 
	ldw	$2,1144($sp)  #$2=Ci            	# [3] anon36
	ldl	$18,1776($sp) #$18=input            	# [3] param
	mulw	$28,$1,$12    #$12=CoStart*Ni           	# [4] 
	ldw	$4,1128($sp)  #$4=Co            	# [4] anon40
	mulw	$24,$25,$24   #$24=cid*B           	# [5] 
	addw	$28,$5,$5     #$5=CoEnd=CoStart+CoStride           	# [5] 
	addw	$5,$3,$3      #$3=CiEnd           	# [6] 
	ldl	$18,0($18)    #$18=input            	# [6] id:685
	cmple	$3,$2,$10     #$10=(CiEnd<=Ci)          	# [7] 
	cmple	$5,$4,$17     #$17=(CoEnd<=Co)          	# [7] 
	seleq	$10,$2,$3,$10 #$10=CiEnd          	# [8] 
	seleq	$17,$4,$5,$17 #$17=CoEnd          	# [8] 
	mulw	$25,$12,$12   #$12=CoStart*Ni*B           	# [11] 
	ldw	$1,1132($sp)  #$1= rid            	# [11] anon39
	sra	$27,3,$27     #$27=rid*Ni/8            	# [12] 
	mulw	$25,$27,$25   #$25=rid*Ni*B/8           	# [13] 
	sra	$24,3,$24     #$24=cid*B/8            	# [14] 
	addl	$24,$25,$24   #$24=rid*Ni*B/8+cid*B/8           	 
	addl	$12,$24,$12   #input offset# [21] 
	s8addl	$12,$18,$12   #input_ptr [22] 
	ble	$1,.Lt_0_51202 #rid<=0 jump            	# [22] 
.BB8_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_50946
	cmplt	$28,$17,$1     #$1=CoStart<CoEnd         	# [0] 
	stw	$10,1168($sp)  #CoEnd           	# [0] anon54
	stw	$17,1172($sp)  #CiEnd           	# [1] anon53
	stw	$28,1176($sp)  #CoStart           	# [1] anon26
	stl	$1,1632($sp)   #CoStart<CoEnd          	# [2] _temp_gra_spill0
	br	$31,.Lt_0_51714            	# [2] 
	.align	4
.BB85_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_51714
	.loc	1	111	0
# 107        output_ptr -= jj*B*No;
# 108  
# 109        Type* weight_ptr = param->weight+(cid*Ni/8+rid*No/8*Ni);
# 110        //input_ptr = param->input+cid*B/8+rid*Ni/8*B+(CoStart+cRo*Ci)*Ni*B;
# 111        for(cKr=0; cKr<K; ++cKr){
	cmplt	$28,$17,$11             	# [0] 
.Lt_0_54274:
#<loop> Part of loop body line 65536, head labeled .Lt_0_51714
	beq	$11,.BB143_convforward_p_simd_rc_c 	# [0] 
.BB88_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_51714
	ldw	$27,1124($sp)             	# [0] anon41
	ldw	$1,1140($sp)              	# [0] anon37
	subw	$17,$28,$18              	# [0] 
	mov	$31,$24                   	# [0] 
	ldl	$6,1192($sp)              	# [1] anon56
	vldd	$9,160($sp)              	# [1] anon52
	mov	$31,$8                    	# [1] 
	mulw	$27,$1,$27               	# [3] 
	s8addl	$27,$31,$25            	# [10] 
	.align	4
.Lt_0_70146:
#<loop> Loop body line 111, nesting depth: 3, estimated iterations: 1000
	.loc	1	234	0
# 230        input_ptr -= Ni*B*Ci*K;
# 231        
# 232        jj=0;
# 233        for(ii=CoStart; ii<CoEnd; ++ii){
# 234            dma(dma_put_output, (long)(output_ptr), (long)(local_output+jj*B*No/64/SIMDSIZE));
	addw	$8,255,$2                	# [0] 
	ldw	$1,32($sp)                	# [0] anon48
	selge	$8,$8,$2,$2             	# [1] 
	ldl	$3,1088($sp)              	# [1] anon46
	sra	$2,3,$2
	addw	$2,$3,$2
	cmpeq	$1,1,$1                 	# [3] 
	dma      $9,$6,$2             	# [5] 
	bne	$1,.Lt_0_70402            	# [5] 
.BB129_convforward_p_simd_rc_c:
.BB127_convforward_p_simd_rc_c:
#<loop> Loop body line 234
#<loop> unrolled 3 times
	ldw	$1,32($sp)                	# [0] anon48
	cmpeq	$1,1,$1                 	# [3] 
	bne	$1,.BB128_convforward_p_simd_rc_c 	# [4] 
.BB130_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .BB129_convforward_p_simd_rc_c
#<loop> unrolled 3 times
	ldw	$1,32($sp)                	# [0] anon48
	cmpeq	$1,1,$1                 	# [3] 
	bne	$1,.BB128_convforward_p_simd_rc_c 	# [4] 
.Lt_0_70914:
#<loop> Part of loop body line 65536, head labeled .BB129_convforward_p_simd_rc_c
	ldw	$1,32($sp)                	# [0] anon48
	cmpeq	$1,1,$1                 	# [3] 
	beq	$1,.BB129_convforward_p_simd_rc_c 	# [4] 
.Lt_0_70402:
.BB128_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_70146
	.loc	1	236	0
# 235            //dma(dma_put_output, (long)(param->output + cid*B/8 + rid*No/8*B + B*No*(cRo*Co+ii)), (long)(local_output+jj*B*No/64/SIMDSIZE));
# 236            dma_wait(&replyput, 1); replyput = 0;
	addw	$24,1,$24                	# [0] 
	addw	$8,$27,$8                	# [0] 
	addl	$25,$6,$6                	# [0] 
	cmpeq	$24,$18,$1              	# [1] 
	stw	$31,32($sp)               	# [2] anon48
	beq	$1,.Lt_0_70146            	# [2] 
.BB93_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_51714
	.loc	1	242	0
# 238            jj++;
# 239        }
# 240        output_ptr += Ci*Ni*B;
# 241        //input forward outer
# 242        input_ptr += Ni*B*Ci;
	ldw	$6,1136($sp)              	# [0] anon38
	.loc	1	236	0
	mov	1,$8                      	# [0] 
	.loc	1	96	0
	addw	$16,1,$16                	# [0] 
	.loc	1	236	0
	ldi	$1,32($sp)                	# [0] anon48
	.loc	1	242	0
	mulw	$13,$6,$6                	# [3] 
	.loc	1	236	0
	stw	$8,1620($sp)              	# [4] count
	.loc	1	96	0
	ldw	$5,1132($sp)              	# [4] anon39
	cmplt	$16,$5,$5               	# [7] 
	.loc	1	236	0
	stl	$1,1624($sp)              	# [8] reply
.Lt_0_72706:
#<loop> Part of loop body line 65536, head labeled .Lt_0_51714
	.loc	1	242	0
	s8addl	$6,$31,$18             	# [0] 
	stl	$11,1632($sp)             	# [0] _temp_gra_spill0
	subl	$12,$18,$12              	# [1] 
	addl	$26,$12,$12              	# [2] 
	.loc	1	96	0
	beq	$5,.BB95_convforward_p_simd_rc_c 	# [2] 
.Lt_0_51714:
#<loop> Loop body line 96, nesting depth: 2, estimated iterations: 100
	.loc	1	99	0
	###########calc output_ptr################
	ldw	$1,1140($sp)  #$1=No             	# [0] anon37
	ldw	$27,1156($sp) #$27=rid             	# [0] anon29
	ldw	$26,1128($sp) #$26=B            	# [1] anon40
	ldw	$3,1124($sp)  #$3=B??            	# [1] anon41
	ldw	$2,1160($sp)  #$2=cid            	# [2] anon28
	mulw	$27,$1,$27    #$27=rid*No           	# [3] 
	mulw	$16,$26,$26   #$26=0??           	# [4] 
	mulw	$3,$1,$25     #$25=B*No           	# [5] 
	ldl	$1,1776($sp)  #param            	# [5] param
	mulw	$3,$2,$2      #$2=cid*B           	# [6] 
	ldl	$1,16($1)     #$1=output # [8] id:686
	addw	$28,$26,$26   #$26=Costart+0           	# [11] 
	sra	$27,3,$27     #$27=rid*No/8            	# [12] 
	mulw	$25,$26,$26   #$26=B*No*CoStart           	# [12] 
	mulw	$27,$3,$3     #$3=rid*No/8*B           	# [13] 
	sra	$2,3,$2       #$2=cid*B/8            	# [15] 
	addl	$2,$3,$2      #$2=cid*B/8+rid*No/8*B           	# [20] 
	addl	$26,$2,$26    #$26=offset??           	# [21] 
	s8addl	$26,$1,$26    #output_ptr         	# [22] 
	ldl	$1,1632($sp)  #CStart<CoEnd            	# [22] _temp_gra_spill0
	beq	$1,.Lt_0_51970 #CStart<Ci is false           	# [25] 
.BB10_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_51714
	vldd	$9,128($sp)   #$9 dma desc           	# [0] anon51
	stl	$27,1760($sp) #$27 rid*Ni/8    	# [0] _temp_gra_spill16
	mov	$31,$24       #$24=0 ii??            	# [0] 
	mov	$31,$8        #$8=0            	# [0] 
	subw	$17,$28,$18   #$18=CoEnd-CoStart          	# [1] 
	mov	$26,$6        #$6=output_ptr            	# [1] 
	s8addl	$25,$31,$27   #$27=B*No*8         	# [1] 
	.align	4
.Lt_0_52738:
#<loop> Loop body line 99, nesting depth: 3, estimated iterations: 1000
	.loc	1	102	0
	mov	$8,$2 #part of loop $8
	ldw	$1,36($sp) #replyget??               	# [0] anon47
	ldl	$3,1088($sp)  #local_output            	# [1] anon46
	sra	$2,5,$2
	cmpeq	$1,1,$1                 	# [3] 
	s4addl	$2,$3,$2               	# [4] 
	dma     $9,$6,$2             	# [5] 
	bne	$1,.Lt_0_52994            	# [5] 
.BB104_convforward_p_simd_rc_c:
.BB102_convforward_p_simd_rc_c:
#<loop> Loop body line 102
#<loop> unrolled 3 times
	ldw	$1,36($sp)                	# [0] anon47
	cmpeq	$1,1,$1                 	# [3] 
	bne	$1,.BB103_convforward_p_simd_rc_c 	# [4] 
.BB105_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .BB104_convforward_p_simd_rc_c
#<loop> unrolled 3 times
	ldw	$1,36($sp)                	# [0] anon47
	cmpeq	$1,1,$1                 	# [3] 
	bne	$1,.BB103_convforward_p_simd_rc_c 	# [4] 
.Lt_0_53506:
#<loop> Part of loop body line 65536, head labeled .BB104_convforward_p_simd_rc_c
	ldw	$1,36($sp)                	# [0] anon47
	cmpeq	$1,1,$1                 	# [3] 
	beq	$1,.BB104_convforward_p_simd_rc_c 	# [4] 
.Lt_0_52994:
.BB103_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_52738
	.loc	1	103	0
	addw	$24,1,$24 #jj++               	# [0] 
	addw	$8,$25,$8 #+B*No                	# [0] 
	addl	$27,$6,$6 #output_ptr+=B*No               	# [0] 
	cmpeq	$24,$18,$1 #ii != CoEnd-CoStart              	# [1] 
	stw	$31,36($sp) #replyget=0              	# [2] anon47
	beq	$1,.Lt_0_52738 #inloop           	# [2] 
.BB15_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_51714
	.loc	1	107	0
	ldw	$8,1124($sp) #$8=B             	# [0] anon41
	ldl	$6,1776($sp) #param            	# [0] param
	mov	1,$2         #$2=1             	# [0] 
	ldi	$1,36($sp)                	# [0] anon47
	ldw	$5,1152($sp) #$5=Ni            	# [1] anon34
	ldw	$9,1160($sp) #$9=cid             	# [1] anon28
	zapnot	$24,15,$18             	# [1] 
	ldl	$27,1760($sp) #rid*No/8        	# [2] _temp_gra_spill16
	ldl	$6,8($6)      #$6=weight       	# [3] id:690
	mulw	$24,$8,$8                	# [3] 
	mulw	$5,$9,$5      #$5=cid*Ni           	# [4] 
	stl	$1,1184($sp)              	# [5] reply
	stw	$2,1180($sp)              	# [5] count
.Lt_0_72194:
#<loop> Part of loop body line 65536, head labeled .Lt_0_51714
	.loc	1	107	0
	ldw	$3,1140($sp)    #$3=No     	# [0] anon37
	ldw	$1,1152($sp)    #$1=Ni          	# [0] anon34
	mull	$25,$18,$2               	# [0] 
	mov	$5,$13
	mov	$31,$11                   	# [1] 
	sra	$13,3,$13                 	# [2] 
	mulw	$3,$8,$3                 	# [3] 
	mulw	$27,$1,$1                	# [4] 
	s8addl	$2,$26,$2              	# [7] 
	s8addl	$3,$31,$3              	# [10] 
	subl	$2,$3,$2                 	# [11] 
	.loc	1	109	0
	addw	$13,$1,$13               	# [11] 
	.loc	1	107	0
	stl	$2,1192($sp)              	# [12] anon56
	.loc	1	111	0
	ldw	$1,1136($sp)              	# [12] anon38
	.loc	1	109	0
	s8addl	$13,$6,$13             	# [12] 
	.loc	1	111	0
	ble	$1,.Lt_0_74242            	# [15] 
.BB18_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_51714
	ldl	$9,1752($sp)              	# [0] _temp_gra_spill15
	stw	$16,1212($sp)             	# [0] anon24
	stl	$13,1200($sp)             	# [1] anon57
	stw	$24,1208($sp)             	# [1] anon23
	s8addl	$9,$31,$9              	# [3] 
	br	$31,.Lt_0_54786            	# [3] 
	.align	4
.BB83_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_54786
	.loc	1	128	0
	ldw	$11,1256($sp)             	# [0] anon17
	.loc	1	226	0
	ldl	$5,1752($sp)              	# [0] _temp_gra_spill15
	subw	$10,$28,$24              	# [0] 
	.loc	1	128	0
	mov	1,$18                     	# [0] 
	ldw	$16,1212($sp)             	# [1] anon24
	ldi	$1,36($sp)                	# [1] anon47
	.loc	1	226	0
	addw	$24,1,$24                	# [1] 
	.loc	1	128	0
	stw	$18,1616($sp)             	# [2] count
	stl	$1,1608($sp)              	# [2] reply
	.loc	1	226	0
	mulw	$5,$24,$5                	# [3] 
	.loc	1	111	0
	addw	$11,1,$11                	# [3] 
.Lt_0_58370:
#<loop> Part of loop body line 65536, head labeled .Lt_0_54786
	.loc	1	226	0
	ldl	$13,1752($sp)             	# [0] _temp_gra_spill15
	ldw	$27,1144($sp)             	# [0] anon36
	s8addl	$5,$31,$12             	# [0] 
	.loc	1	111	0
	ldw	$1,1136($sp)              	# [1] anon38
	.loc	1	226	0
	subl	$6,$12,$12               	# [1] 
	mulw	$13,$27,$13              	# [3] 
	.loc	1	111	0
	cmplt	$11,$1,$1               	# [4] 
	.loc	1	226	0
	s8addl	$13,$12,$12            	# [10] 
	s8addl	$13,$31,$26            	# [10] 
	.loc	1	111	0
	beq	$1,.BB85_convforward_p_simd_rc_c 	# [10] 
.Lt_0_54786:
#<loop> Loop body line 111, nesting depth: 3, estimated iterations: 100
	.loc	1	112	0
	ldw	$24,1140($sp)             	# [0] anon37
	ldw	$25,1152($sp)             	# [0] anon34
	addw	$11,$16,$2               	# [0] 
	ldl	$13,1200($sp)             	# [1] anon57
	mulw	$24,$25,$24              	# [3] 
	stw	$2,1252($sp)              	# [5] anon15
	ldw	$1,1136($sp)              	# [5] anon38
	ble	$1,.Lt_0_55042            	# [8] 
.BB20_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_54786
	vldd	$27,96($sp)              	# [0] anon50
	mov	$31,$18                   	# [0] 
	mov	$31,$8                    	# [0] 
	mov	$13,$6                    	# [0] 
	s8addl	$24,$31,$25            	# [1] 
	.align	4
.Lt_0_55810:
#<loop> Loop body line 112, nesting depth: 4, estimated iterations: 1000
	.loc	1	116	0
	ldw	$1,36($sp)                	# [0] anon47
	ldl	$3,1096($sp)              	# [0] anon45
	addw	$8,63,$2                 	# [0] 
	selge	$8,$8,$2,$2             	# [1] 
	sra	$2,6,$2                   	# [2] 
	cmpeq	$1,1,$1                 	# [3] 
	s8addl	$2,$3,$2               	# [3] 
	dma      $27,$6,$2            	# [4] 
	bne	$1,.Lt_0_56066            	# [4] 
.BB108_convforward_p_simd_rc_c:
.BB106_convforward_p_simd_rc_c:
#<loop> Loop body line 116
#<loop> unrolled 3 times
	ldw	$1,36($sp)                	# [0] anon47
	cmpeq	$1,1,$1                 	# [3] 
	bne	$1,.BB107_convforward_p_simd_rc_c 	# [4] 
.BB109_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .BB108_convforward_p_simd_rc_c
#<loop> unrolled 3 times
	ldw	$1,36($sp)                	# [0] anon47
	cmpeq	$1,1,$1                 	# [3] 
	bne	$1,.BB107_convforward_p_simd_rc_c 	# [4] 
.Lt_0_56578:
#<loop> Part of loop body line 65536, head labeled .BB108_convforward_p_simd_rc_c
	ldw	$1,36($sp)                	# [0] anon47
	cmpeq	$1,1,$1                 	# [3] 
	beq	$1,.BB108_convforward_p_simd_rc_c 	# [4] 
.Lt_0_56066:
.BB107_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_55810
	.loc	1	117	0
	ldw	$1,1136($sp)              	# [0] anon38
	addw	$18,1,$18                	# [0] 
	addw	$8,$24,$8                	# [0] 
	addl	$25,$6,$6                	# [0] 
	cmpeq	$18,$1,$1               	# [3] 
	stw	$31,36($sp)               	# [4] anon47
	beq	$1,.Lt_0_55810            	# [4] 
.BB25_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_54786
	ldw	$18,1136($sp)             	# [0] anon38
	.loc	1	124	0
	vldd	$5,64($sp)               	# [0] anon49
	.loc	1	117	0
	mov	1,$1                      	# [0] 
	ldi	$26,36($sp)               	# [0] anon47
	.loc	1	126	0
	addl	$12,$9,$6                	# [1] 
	.loc	1	128	0
	cmple	$10,$28,$25             	# [1] 
	mov	$28,$8                    	# [1] 
	.loc	1	124	0
	zapnot	$18,15,$27             	# [3] 
	.loc	1	117	0
	stl	$26,1224($sp)             	# [4] reply
	stw	$1,1216($sp)              	# [4] count
.Lt_0_72450:
#<loop> Part of loop body line 65536, head labeled .Lt_0_54786
	.loc	1	124	0
	ldw	$2,1104($sp)              	# [0] anon44
	ldi	$1,36($sp)                	# [0] anon47
	mov	1,$3                      	# [0] 
	mull	$24,$27,$4               	# [0] 
	stl	$1,1240($sp)              	# [4] reply
	ldw	$1,36($sp)                	# [4] anon47
	s8addl	$4,$13,$4              	# [7] 
	cmpeq	$1,1,$1                 	# [7] 
	stw	$3,1232($sp)              	# [8] count
	ldw	$26,1276($sp)             	# [8] anon30
	mulw	$2,$26,$2                	# [11] 
	stl	$4,1200($sp)              	# [12] anon57
	ldl	$3,1112($sp)              	# [12] anon43
	s8addl	$2,$31,$2              	# [18] 
	s4addl	$2,$3,$2               	# [19] 
	dma      $5,$12,$2            	# [20] 
	bne	$1,.Lt_0_57346            	# [20] 
.BB112_convforward_p_simd_rc_c:
.BB110_convforward_p_simd_rc_c:
#<loop> Loop body line 124
#<loop> unrolled 3 times
	ldw	$1,36($sp)                	# [0] anon47
	cmpeq	$1,1,$1                 	# [3] 
	bne	$1,.BB111_convforward_p_simd_rc_c 	# [4] 
.BB113_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .BB112_convforward_p_simd_rc_c
#<loop> unrolled 3 times
	ldw	$1,36($sp)                	# [0] anon47
	cmpeq	$1,1,$1                 	# [3] 
	bne	$1,.BB111_convforward_p_simd_rc_c 	# [4] 
.Lt_0_57858:
#<loop> Part of loop body line 65536, head labeled .BB112_convforward_p_simd_rc_c
	ldw	$1,36($sp)                	# [0] anon47
	cmpeq	$1,1,$1                 	# [3] 
	beq	$1,.BB112_convforward_p_simd_rc_c 	# [4] 
.Lt_0_57346:
.BB111_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_54786
	.loc	1	125	0
	stw	$31,36($sp)               	# [0] anon47
	.loc	1	128	0
	bne	$25,.BB141_convforward_p_simd_rc_c 	# [0] 
.BB30_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_54786
	stw	$11,1256($sp)             	# [0] anon17
	stw	$18,1248($sp)             	# [0] anon22
	br	$31,.Lt_0_58882            	# [0] 
	.align	4
.BB79_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_58882
	.loc	1	133	0
	ldw	$9,1124($sp)              	# [0] anon41
	ldw	$1,1152($sp)              	# [0] anon34
	.loc	1	218	0
	mov	1,$27                     	# [0] 
	.loc	1	219	0
	mov	1,$16                     	# [0] 
	.loc	1	133	0
	ldw	$10,1168($sp)             	# [1] anon54
	.loc	1	218	0
	ldw	$25,1276($sp)             	# [1] anon30
	.loc	1	128	0
	addw	$8,1,$8                  	# [1] 
	.loc	1	133	0
	ldl	$6,1264($sp)              	# [2] anon55
	mulw	$9,$1,$9                 	# [3] 
	.loc	1	218	0
	subw	$27,$25,$25              	# [4] 
	.loc	1	128	0
	cmplt	$8,$10,$18              	# [4] 
	.loc	1	218	0
	stw	$25,1276($sp)             	# [6] anon30
	.loc	1	133	0
	ldw	$24,1272($sp)             	# [6] anon31
	.loc	1	219	0
	subw	$16,$24,$16              	# [9] 
	.loc	1	133	0
	stl	$9,1752($sp)              	# [10] _temp_gra_spill15
	.loc	1	219	0
	stw	$16,1272($sp)             	# [10] anon31
	.loc	1	133	0
	s8addl	$9,$31,$9              	# [10] 
.Lt_0_59138:
#<loop> Part of loop body line 65536, head labeled .Lt_0_58882
	ldw	$1,36($sp)                	# [0] anon47
	ldi	$3,36($sp)                	# [0] anon47
	mov	1,$2                      	# [0] 
	stl	$3,1608($sp)              	# [1] reply
	stw	$2,1616($sp)              	# [1] count
	cmpeq	$1,1,$1                 	# [3] 
	bne	$1,.Lt_0_67842            	# [4] 
.BB125_convforward_p_simd_rc_c:
.BB123_convforward_p_simd_rc_c:
#<loop> Loop body line 133
#<loop> unrolled 3 times
	ldw	$1,36($sp)                	# [0] anon47
	cmpeq	$1,1,$1                 	# [3] 
	bne	$1,.BB124_convforward_p_simd_rc_c 	# [4] 
.BB126_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .BB125_convforward_p_simd_rc_c
#<loop> unrolled 3 times
	ldw	$1,36($sp)                	# [0] anon47
	cmpeq	$1,1,$1                 	# [3] 
	bne	$1,.BB124_convforward_p_simd_rc_c 	# [4] 
.Lt_0_68354:
#<loop> Part of loop body line 65536, head labeled .BB125_convforward_p_simd_rc_c
	ldw	$1,36($sp)                	# [0] anon47
	cmpeq	$1,1,$1                 	# [3] 
	beq	$1,.BB125_convforward_p_simd_rc_c 	# [4] 
.Lt_0_67842:
.BB124_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_58882
	.loc	1	221	0
	addl	$9,$6,$6                 	# [0] 
	.loc	1	217	0
	stw	$31,36($sp)               	# [1] anon47
	.loc	1	128	0
	beq	$18,.BB83_convforward_p_simd_rc_c 	# [1] 
.Lt_0_58882:
#<loop> Loop body line 128, nesting depth: 4, estimated iterations: 100
	.loc	1	131	0
	ldw	$3,1104($sp)              	# [0] anon44
	ldw	$5,1272($sp)              	# [0] anon31
	.loc	1	133	0
	mov	$31,$24                   	# [0] 
	.loc	1	131	0
	vldd	$2,64($sp)               	# [1] anon49
	ldl	$4,1112($sp)              	# [1] anon43
	.loc	1	133	0
	ldw	$1,1136($sp)              	# [2] anon38
	.loc	1	131	0
	mulw	$3,$5,$3                 	# [3] 
	s8addl	$3,$31,$3              	# [10] 
	s4addl	$3,$4,$3               	# [11] 
	dma      $2,$6,$3             	# [12] 
	.loc	1	133	0
	ble	$1,.BB138_convforward_p_simd_rc_c 	# [12] 
.BB32_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_58882
	stl	$6,1264($sp)              	# [0] anon55
	stw	$8,1260($sp)              	# [0] anon16
	br	$31,.Lt_0_59650            	# [0] 
	.align	4
.BB77_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_59650
	.loc	1	141	0
	ldw	$8,1260($sp)              	# [0] anon16
	ldw	$17,1172($sp)             	# [0] anon53
.Lt_0_75522:
.L_0_49922:
#<loop> Part of loop body line 65536, head labeled .Lt_0_59650
	.loc	1	133	0
	ldw	$1,1136($sp)              	# [0] anon38
	addw	$24,1,$24                	# [0] 
	cmplt	$24,$1,$1               	# [3] 
	beq	$1,.BB79_convforward_p_simd_rc_c 	# [4] 
.Lt_0_59650:
#<loop> Loop body line 133, nesting depth: 5, estimated iterations: 100
	.loc	1	134	0
	subw	$8,$24,$6                	# [0] 
	.loc	1	133	0
	cmplt	$6,$28,$1               	# [1] 
	bne	$1,.Lt_0_75522            	# [2] 
.BB34_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_59650
	cmplt	$6,$17,$1               	# [0] 
	beq	$1,.Lt_0_75522            	# [1] 
.BB35_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_59650
	.loc	1	141	0
	stw	$24,1284($sp)             	# [0] anon18
	ldw	$25,1140($sp)             	# [0] anon37
	mov	$31,$17                   	# [0] 
	addw	$25,7,$27                	# [3] 
	selge	$25,$25,$27,$25         	# [4] 
	stw	$6,1280($sp)              	# [4] anon25
	sra	$25,3,$25                 	# [5] 
	br	$31,.Lt_0_60418            	# [5] 
	.align	4
.BB75_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_60418
	.loc	1	147	0
	ldw	$24,1284($sp)             	# [0] anon18
	ldw	$28,1176($sp)             	# [0] anon26
	.loc	1	141	0
	addw	$17,1,$17                	# [0] 
	cmple	$17,7,$5                	# [1] 
.Lt_0_60674:
#<loop> Part of loop body line 65536, head labeled .Lt_0_60418
	beq	$5,.BB77_convforward_p_simd_rc_c 	# [0] 
.Lt_0_60418:
#<loop> Loop body line 141, nesting depth: 6, estimated iterations: 100
	.loc	1	145	0
	ldw	$2,1152($sp)              	# [0] anon34
	.loc	1	143	0
	ldw	$1,1280($sp)              	# [0] anon25
	.loc	1	147	0
	mov	$31,$8                    	# [0] 
	.loc	1	143	0
	ldw	$5,1140($sp)              	# [1] anon37
	.loc	1	144	0
	ldw	$6,1104($sp)              	# [1] anon44
	ldw	$3,1276($sp)              	# [2] anon30
	.loc	1	143	0
	ldw	$18,1124($sp)             	# [2] anon41
	.loc	1	145	0
	mulw	$24,$2,$2                	# [3] 
	.loc	1	143	0
	subw	$1,$28,$1                	# [3] 
	ldl	$27,1088($sp)             	# [3] anon46
	mulw	$5,$1,$1                 	# [4] 
	.loc	1	144	0
	mulw	$6,$3,$6                 	# [5] 
	.loc	1	145	0
	mulw	$5,$2,$5                 	# [10] 
	.loc	1	143	0
	mulw	$18,$1,$18               	# [11] 
	.loc	1	144	0
	ldl	$1,1112($sp)              	# [11] anon43
	s8addl	$6,$31,$6              	# [12] 
	s4addl	$6,$1,$6               	# [14] 
	.loc	1	145	0
	addw	$5,63,$1                 	# [17] 
	selge	$5,$5,$1,$5             	# [18] 
	ldl	$1,1096($sp)              	# [18] anon45
	sra	$5,6,$5                   	# [19] 
	s8addl	$5,$1,$5               	# [21] 
	.loc	1	143	0
	addw	$18,255,$1               	# [21] 
	selge	$18,$18,$1,$18          	# [22] 
	sra	$18,8,$18                 	# [23] 
	s8addl	$18,$31,$18            	# [24] 
	s4addl	$18,$27,$18            	# [25] 
	.loc	1	147	0
	ble	$25,.BB135_convforward_p_simd_rc_c 	# [25] 
.BB37_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_60418
	stw	$17,1288($sp)             	# [0] anon19
	br	$31,.Lt_0_61186            	# [0] 
	.align	4
.BB73_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_61186
	.loc	1	210	0
	ldw	$24,1124($sp)             	# [0] anon41
	.loc	1	209	0
	ldw	$1,1152($sp)              	# [0] anon34
	.loc	1	148	0
	ldw	$8,1292($sp)              	# [1] anon21
	.loc	1	210	0
	s4subl	$24,$24,$16            	# [3] 
	.loc	1	209	0
	srl	$1,63,$28                 	# [3] 
	.loc	1	208	0
	addw	$24,31,$2                	# [3] 
	.loc	1	148	0
	stw	$7,1600($sp)              	# [4] anon33
	ldw	$25,1140($sp)             	# [4] anon37
	.loc	1	210	0
	sextw	$16,$16                 	# [4] 
	.loc	1	209	0
	addw	$28,$1,$28               	# [4] 
	.loc	1	210	0
	addw	$16,31,$1                	# [5] 
	.loc	1	208	0
	selge	$24,$24,$2,$24          	# [5] 
	.loc	1	209	0
	sra	$28,1,$28                 	# [5] 
	.loc	1	147	0
	addw	$8,4,$8                  	# [5] 
	.loc	1	210	0
	selge	$16,$16,$1,$16          	# [6] 
	.loc	1	208	0
	sra	$24,5,$24                 	# [6] 
	.loc	1	209	0
	s8addl	$28,$5,$5              	# [6] 
	.loc	1	148	0
	addw	$25,7,$27                	# [7] 
	.loc	1	210	0
	sra	$16,5,$16                 	# [7] 
	.loc	1	148	0
	selge	$25,$25,$27,$25         	# [8] 
	sra	$25,3,$25                 	# [9] 
.Lt_0_61442:
#<loop> Part of loop body line 65536, head labeled .Lt_0_61186
	.loc	1	208	0
	subw	$31,$24,$27              	# [0] 
	.loc	1	210	0
	s8addl	$16,$31,$28            	# [0] 
	.loc	1	147	0
	cmple	$25,$8,$1               	# [0] 
	.loc	1	208	0
	s8addl	$27,$31,$27            	# [1] 
	.loc	1	210	0
	s4addl	$28,$18,$18            	# [1] 
	.loc	1	208	0
	s4addl	$27,$6,$6              	# [2] 
	.loc	1	147	0
	bne	$1,.BB75_convforward_p_simd_rc_c 	# [2] 
.Lt_0_61186:
#<loop> Loop body line 147, nesting depth: 7, estimated iterations: 100
	.loc	1	148	0
	mov	$31,$24                   	# [0] 
	ble	$19,.BB134_convforward_p_simd_rc_c 	# [0] 
.BB39_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_61186
	stw	$8,1292($sp)              	# [0] anon21
	br	$31,.Lt_0_61954            	# [0] 
	.align	4
.BB69_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_61954
	.loc	1	204	0
	ldw	$8,1152($sp)              	# [0] anon34
	.loc	1	206	0
	ldw	$10,1124($sp)             	# [0] anon41
	sll	$19,7,$11                 	# [0] 
	.loc	1	153	0
	ldi	$16,192($sp)              	# [0] anon63
	ldw	$24,1296($sp)             	# [1] anon13
	ldl	$18,1304($sp)             	# [1] anon60
	ldw	$17,1288($sp)             	# [2] anon19
	.loc	1	204	0
	addw	$8,7,$27                 	# [3] 
	.loc	1	206	0
	addw	$10,7,$25                	# [3] 
	.loc	1	204	0
	selge	$8,$8,$27,$8            	# [4] 
	.loc	1	206	0
	selge	$10,$10,$25,$10         	# [4] 
	.loc	1	204	0
	sra	$8,3,$8                   	# [5] 
	.loc	1	206	0
	sra	$10,3,$10                 	# [5] 
.Lt_0_63234:
#<loop> Part of loop body line 65536, head labeled .Lt_0_61954
	.loc	1	204	0
	ldw	$25,1124($sp)             	# [0] anon41
	.loc	1	206	0
	subw	$31,$10,$12              	# [0] 
	.loc	1	204	0
	subw	$31,$8,$28               	# [0] 
	.loc	1	153	0
	s8addl	$19,$31,$9             	# [0] 
	.loc	1	206	0
	addl	$18,$11,$27              	# [1] 
	s8addl	$12,$31,$12            	# [1] 
	.loc	1	204	0
	mulw	$28,$25,$25              	# [3] 
.BB122_convforward_p_simd_rc_c:
.BB120_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_61954
#<loop> unrolled 4 times (fully)
	.loc	1	199	0
	vldd	$2,0($18)                	# [0] id:740
	vldd	$1,0($16)                	# [0] id:741 anon63+0x0
	vldd	$4,384($21)              	# [1] id:746 anon63+0x0
	vaddd	$1,$2,$1                	# [4] 
	vldd	$2,32($18)               	# [4] id:744
	vstd	$1,0($18)                	# [8] id:742
	vldd	$1,0($23)                	# [8] id:743 anon63+0x0
	vaddd	$1,$2,$1                	# [12] 
	vldd	$2,64($18)               	# [12] id:747
	vstd	$1,32($18)               	# [16] id:745
	vldd	$1,0($21)                	# [16] id:746 anon63+0x0
	vaddd	$1,$2,$1                	# [20] 
	vldd	$2,96($18)               	# [20] id:750
	vstd	$1,64($18)               	# [24] id:748
	vldd	$1,0($22)                	# [24] id:749 anon63+0x0
	vaddd	$1,$2,$1                	# [28] 
	vldd	$2,128($16)              	# [28] id:741 anon63+0x0
	vstd	$1,96($18)               	# [32] id:751
	s4addl	$9,$18,$1              	# [32] 
	vldd	$3,0($1)                 	# [33] id:740
	vaddd	$2,$3,$2                	# [37] 
	vldd	$3,32($1)                	# [37] id:744
	vstd	$2,0($1)                 	# [41] id:742
	vldd	$2,128($23)              	# [41] id:743 anon63+0x0
	vaddd	$2,$3,$2                	# [45] 
	vldd	$3,64($1)                	# [45] id:747
	vstd	$2,32($1)                	# [49] id:745
	vldd	$2,128($21)              	# [49] id:746 anon63+0x0
	vaddd	$2,$3,$2                	# [53] 
	vldd	$3,96($1)                	# [53] id:750
	vstd	$2,64($1)                	# [57] id:748
	vldd	$2,128($22)              	# [57] id:749 anon63+0x0
	vaddd	$2,$3,$2                	# [61] 
	vstd	$2,96($1)                	# [65] id:751
	s4addl	$9,$1,$1               	# [65] 
	vldd	$3,0($1)                 	# [66] id:740
	vldd	$2,256($16)              	# [66] id:741 anon63+0x0
	vaddd	$2,$3,$2                	# [70] 
	vldd	$3,32($1)                	# [70] id:744
	vstd	$2,0($1)                 	# [74] id:742
	vldd	$2,256($23)              	# [74] id:743 anon63+0x0
	vaddd	$2,$3,$2                	# [78] 
	vldd	$3,64($1)                	# [78] id:747
	vstd	$2,32($1)                	# [82] id:745
	vldd	$2,256($21)              	# [82] id:746 anon63+0x0
	vaddd	$2,$3,$2                	# [86] 
	vldd	$3,96($1)                	# [86] id:750
	vstd	$2,64($1)                	# [90] id:748
	vldd	$2,256($22)              	# [90] id:749 anon63+0x0
	vaddd	$2,$3,$2                	# [94] 
	vstd	$2,96($1)                	# [98] id:751
	s4addl	$9,$1,$1               	# [98] 
	vldd	$3,0($1)                 	# [99] id:740
	vldd	$2,384($16)              	# [99] id:741 anon63+0x0
	vldd	$8,64($1)                	# [100] id:747
	vaddd	$2,$3,$2                	# [103] 
	vldd	$3,32($1)                	# [103] id:744
	vaddd	$4,$8,$4                	# [104] 
	vstd	$2,0($1)                 	# [107] id:742
	vldd	$2,384($23)              	# [107] id:743 anon63+0x0
	vstd	$4,64($1)                	# [108] id:748
	vaddd	$2,$3,$2                	# [111] 
	vldd	$3,96($1)                	# [111] id:750
	vstd	$2,32($1)                	# [115] id:745
	vldd	$2,384($22)              	# [115] id:749 anon63+0x0
	vaddd	$2,$3,$2                	# [119] 
	vstd	$2,96($1)                	# [123] id:751
.BB72_convforward_p_simd_rc_c:
.BB121_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_61954
	.loc	1	204	0
	addw	$25,31,$8                	# [0] 
	.loc	1	148	0
	addw	$24,4,$24                	# [0] 
	.loc	1	206	0
	s4addl	$12,$27,$18            	# [0] 
	.loc	1	205	0
	s8addl	$28,$5,$5              	# [0] 
	.loc	1	204	0
	selge	$25,$25,$8,$8           	# [1] 
	.loc	1	148	0
	cmple	$19,$24,$1              	# [1] 
	.loc	1	199	0
	stw	$7,1600($sp)              	# [1] anon33
	.loc	1	206	0
	ldi	$18,128($18)              	# [1] 
	.loc	1	204	0
	sra	$8,5,$8                   	# [2] 
	s8addl	$8,$31,$8              	# [3] 
	s4addl	$8,$6,$6               	# [4] 
	ldi	$6,128($6)                	# [5] 
	.loc	1	148	0
	bne	$1,.BB73_convforward_p_simd_rc_c 	# [5] 
.Lt_0_61954:
#<loop> Loop body line 148, nesting depth: 8, estimated iterations: 100
	.loc	1	153	0
	mov	$31,$8                    	# [0] 
	.loc	1	151	0
	mov	$15,$16                   	# [0] 
.BB116_convforward_p_simd_rc_c:
.BB114_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_61954
#<loop> unrolled 16 times (fully)
	vstd	$14,192($sp)             	# [0] anon63
	vstd	$14,224($sp)             	# [0] anon63+32
	vstd	$14,256($sp)             	# [1] anon63+64
	vstd	$14,288($sp)             	# [1] anon63+96
	vstd	$14,320($sp)             	# [2] anon63+128
	vstd	$14,352($sp)             	# [2] anon63+160
	vstd	$14,384($sp)             	# [3] anon63+192
	vstd	$14,416($sp)             	# [3] anon63+224
	vstd	$14,448($sp)             	# [4] anon63+256
	vstd	$14,480($sp)             	# [4] anon63+288
	vstd	$14,512($sp)             	# [5] anon63+320
	vstd	$14,544($sp)             	# [5] anon63+352
	vstd	$14,576($sp)             	# [6] anon63+384
	vstd	$14,608($sp)             	# [6] anon63+416
	vstd	$14,640($sp)             	# [7] anon63+448
	vstd	$14,672($sp)             	# [7] anon63+480
.BB42_convforward_p_simd_rc_c:
.BB115_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_61954
	.loc	1	153	0
	ble	$20,.BB133_convforward_p_simd_rc_c 	# [0] 
.BB43_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_61954
	stw	$24,1296($sp)             	# [0] anon13
	stl	$18,1304($sp)             	# [0] anon60
	br	$31,.Lt_0_63746            	# [0] 
	.align	4
.Lt_0_64258:
#<loop> Part of loop body line 65536, head labeled .Lt_0_63746
	#nop
	.loc	1	182	0
	getr	$6                       	# [1] 
.BB62_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_63746
	vstd	$6,1472($sp)             	# [0] anon58
	#nop
	.loc	1	183	0
	getr	$5                       	# [2] 
.BB63_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_63746
	vstd	$5,1504($sp)             	# [0] anon58+32
	#nop
	.loc	1	184	0
	getr	$6                       	# [2] 
.BB64_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_63746
	vstd	$6,1536($sp)             	# [0] anon58+64
	#nop
	.loc	1	185	0
	getr	$5                       	# [2] 
.BB65_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_63746
	vstd	$5,1568($sp)             	# [0] anon58+96
.Lt_0_73218:
#<loop> Part of loop body line 65536, head labeled .Lt_0_63746
	.loc	1	190	0
	vldd	$20,1440($sp)            	# [0] anon59+96
	vldd	$17,1408($sp)            	# [0] anon59+64
	mov	$7,$16                    	# [0] 
	vldd	$19,1376($sp)            	# [1] anon59+32
	vldd	$18,1344($sp)            	# [1] anon59
.BB119_convforward_p_simd_rc_c:
.BB117_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_63746
#<loop> unrolled 4 times (fully)
	vldd	$1,1472($sp)             	# [0] anon58
	vldd	$2,192($sp)              	# [0] anon63
	vldd	$24,1536($sp)            	# [1] anon58+64
	vldd	$28,256($23)             	# [1] id:733 anon63+0x0
	vldd	$27,256($21)             	# [2] id:735 anon63+0x0
	vldd	$8,576($sp)              	# [2] anon63+384
	vldd	$4,384($23)              	# [3] id:733 anon63+0x0
	vldd	$3,384($21)              	# [3] id:735 anon63+0x0
	vmad	$1,$18,$2,$2             	# [4] 
	vldd	$25,256($22)             	# [4] id:737 anon63+0x0
	vmad	$24,$19,$28,$28          	# [5] 
	vmad	$24,$17,$27,$27          	# [6] 
	vstd	$2,192($sp)              	# [8] anon63
	vldd	$2,0($23)                	# [8] id:733 anon63+0x0
	vstd	$28,256($23)             	# [9] id:734 anon63+0x0
	vstd	$27,256($21)             	# [10] id:736 anon63+0x0
	vmad	$1,$19,$2,$2             	# [12] 
	vstd	$2,0($23)                	# [16] id:734 anon63+0x0
	vldd	$2,0($21)                	# [16] id:735 anon63+0x0
	vmad	$1,$17,$2,$2             	# [20] 
	vstd	$2,0($21)                	# [24] id:736 anon63+0x0
	vldd	$2,0($22)                	# [24] id:737 anon63+0x0
	vmad	$1,$20,$2,$1             	# [28] 
	vldd	$2,320($sp)              	# [28] anon63+128
	vstd	$1,0($22)                	# [32] id:738 anon63+0x0
	vldd	$1,1504($sp)             	# [32] anon58+32
	vmad	$1,$18,$2,$2             	# [36] 
	vstd	$2,320($sp)              	# [40] anon63+128
	vldd	$2,128($23)              	# [40] id:733 anon63+0x0
	vmad	$1,$19,$2,$2             	# [44] 
	vstd	$2,128($23)              	# [48] id:734 anon63+0x0
	vldd	$2,128($21)              	# [48] id:735 anon63+0x0
	vmad	$1,$17,$2,$2             	# [52] 
	vstd	$2,128($21)              	# [56] id:736 anon63+0x0
	vldd	$2,128($22)              	# [56] id:737 anon63+0x0
	vmad	$1,$20,$2,$1             	# [60] 
	vldd	$2,384($22)              	# [60] id:737 anon63+0x0
	vstd	$1,128($22)              	# [64] id:738 anon63+0x0
	vldd	$1,448($sp)              	# [64] anon63+256
	vmad	$24,$18,$1,$1            	# [68] 
	vmad	$24,$20,$25,$24          	# [68] 
	vstd	$1,448($sp)              	# [72] anon63+256
	vldd	$1,1568($sp)             	# [72] anon58+96
	vstd	$24,256($22)             	# [73] id:738 anon63+0x0
	vmad	$1,$17,$3,$3             	# [76] 
	vmad	$1,$19,$4,$4             	# [76] 
	vmad	$1,$18,$8,$8             	# [77] 
	vmad	$1,$20,$2,$1             	# [77] 
	vstd	$3,384($21)              	# [80] id:736 anon63+0x0
	vstd	$4,384($23)              	# [80] id:734 anon63+0x0
	vstd	$8,576($sp)              	# [81] anon63+384
	vstd	$1,384($22)              	# [81] id:738 anon63+0x0
.BB68_convforward_p_simd_rc_c:
.BB118_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_63746
	stw	$7,1600($sp)              	# [0] anon33
	.loc	1	153	0
	ldw	$20,1152($sp)             	# [0] anon34
	.loc	1	193	0
	ldw	$19,1124($sp)             	# [1] anon41
	.loc	1	153	0
	ldw	$8,1312($sp)              	# [1] anon14
	.loc	1	194	0
	ldl	$5,1320($sp)              	# [2] anon62
	.loc	1	193	0
	ldl	$24,1328($sp)             	# [2] anon61
	.loc	1	153	0
	addw	$20,7,$25                	# [3] 
	ldw	$17,1288($sp)             	# [3] anon19
	.loc	1	193	0
	addw	$19,31,$27               	# [4] 
	.loc	1	153	0
	selge	$20,$20,$25,$20         	# [4] 
	addw	$8,1,$8                  	# [4] 
	.loc	1	193	0
	selge	$19,$19,$27,$19         	# [5] 
	.loc	1	153	0
	sra	$20,3,$20                 	# [5] 
	.loc	1	194	0
	ldi	$5,8($5)                  	# [5] 
	.loc	1	193	0
	sra	$19,5,$19                 	# [6] 
	.loc	1	153	0
	cmple	$20,$8,$1               	# [6] 
	.loc	1	193	0
	s8addl	$19,$31,$6             	# [7] 
	s4addl	$6,$24,$6              	# [8] 
	.loc	1	153	0
	bne	$1,.BB69_convforward_p_simd_rc_c 	# [8] 
.Lt_0_63746:
#<loop> Loop body line 153, nesting depth: 9, estimated iterations: 100
	ldw	$1,1156($sp)              	# [0] anon29
	stw	$8,1312($sp)              	# [0] anon14
	stw	$16,1316($sp)             	# [1] anon32
	stl	$5,1320($sp)              	# [1] anon62
	cmpeq	$1,$17,$1               	# [3] 
	beq	$1,.Lt_0_64002            	# [4] 
.BB45_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_63746
	.loc	1	155	0
	vldd	$18,0($6)                	# [0] id:702
	ldi	$19,32($6)                	# [0] 
	stl	$19,1328($sp)             	# [1] anon61
	vstd	$18,1344($sp)            	# [4] anon59
	#nop
	vfmov	$18,$5                  	# [6] 
	.loc	1	156	0
	mov	8,$17                     	# [6] 
.BB46_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_63746
	.loc	1	157	0
	ldl	$19,1328($sp)             	# [0] anon61
	.loc	1	156	0
	putc	$5,$17                   	# [1] 
	.loc	1	157	0
	vldd	$18,0($19)               	# [3] id:704
	ldi	$19,32($19)               	# [3] 
	stl	$19,1328($sp)             	# [4] anon61
	vstd	$18,1376($sp)            	# [7] anon59+32
	#nop
	vfmov	$18,$6                  	# [9] 
	.loc	1	158	0
	mov	8,$16                     	# [9] 
.BB47_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_63746
	.loc	1	159	0
	ldl	$20,1328($sp)             	# [0] anon61
	.loc	1	158	0
	putc	$6,$16                   	# [1] 
	.loc	1	159	0
	vldd	$19,0($20)               	# [3] id:706
	ldi	$20,32($20)               	# [3] 
	stl	$20,1328($sp)             	# [4] anon61
	vstd	$19,1408($sp)            	# [7] anon59+64
	#nop
	vfmov	$19,$5                  	# [9] 
	.loc	1	160	0
	mov	8,$18                     	# [9] 
.BB48_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_63746
	.loc	1	161	0
	ldl	$19,1328($sp)             	# [0] anon61
	.loc	1	160	0
	putc	$5,$18                   	# [1] 
	.loc	1	161	0
	vldd	$19,0($19)               	# [3] id:708
	vstd	$19,1440($sp)            	# [7] anon59+96
	#nop
	vfmov	$19,$8                  	# [9] 
	.loc	1	162	0
	mov	8,$17                     	# [9] 
.BB49_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_63746
	.loc	1	163	0
	ldl	$1,1328($sp)              	# [1] anon61
	.loc	1	172	0
	ldw	$5,1288($sp)              	# [2] anon19
	.loc	1	162	0
	putc	$8,$17                   	# [3] 
	.loc	1	172	0
	ldw	$6,1160($sp)              	# [3] anon28
	.loc	1	163	0
	ldi	$1,-96($1)                	# [4] 
	stl	$1,1328($sp)              	# [5] anon61
	.loc	1	155	0
	br	$31,.Lt_0_72962            	# [5] 
.Lt_0_64002:
#<loop> Part of loop body line 65536, head labeled .Lt_0_63746
	.loc	1	166	0
	stl	$6,1328($sp)              	# [0] anon61
	#nop
	getc	$5                       	# [2] 
.BB51_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_63746
	vstd	$5,1344($sp)             	# [0] anon59
	#nop
	.loc	1	167	0
	getc	$8                       	# [2] 
.BB52_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_63746
	vstd	$8,1376($sp)             	# [0] anon59+32
	#nop
	.loc	1	168	0
	getc	$6                       	# [2] 
.BB53_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_63746
	vstd	$6,1408($sp)             	# [0] anon59+64
	#nop
	.loc	1	172	0
	ldw	$5,1288($sp)              	# [2] anon19
	.loc	1	169	0
	getc	$8                       	# [2] 
.BB54_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_63746
	.loc	1	172	0
	ldw	$6,1160($sp)              	# [0] anon28
	.loc	1	169	0
	vstd	$8,1440($sp)             	# [1] anon59+96
.Lt_0_72962:
#<loop> Part of loop body line 65536, head labeled .Lt_0_63746
	.loc	1	172	0
	cmpeq	$5,$6,$1                	# [0] 
	beq	$1,.Lt_0_64258            	# [1] 
.BB56_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_63746
	.loc	1	173	0
	ldl	$17,1320($sp)             	# [0] anon62
	ldde	$17,0($17)               	# [3] id:714
	vstd	$17,1472($sp)            	# [7] anon58
	#nop
	vfmov	$17,$5                  	# [9] 
	.loc	1	174	0
	mov	8,$16                     	# [9] 
.BB57_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_63746
	.loc	1	175	0
	ldw	$18,1152($sp)             	# [0] anon34
	ldl	$19,1320($sp)             	# [0] anon62
	.loc	1	174	0
	putr	$5,$16                   	# [1] 
	.loc	1	175	0
	addw	$18,7,$20                	# [3] 
	selge	$18,$18,$20,$18         	# [4] 
	sra	$18,3,$18                 	# [5] 
	s8addl	$18,$19,$18            	# [6] 
	ldde	$18,0($18)               	# [7] id:717
	vstd	$18,1504($sp)            	# [11] anon58+32
	#nop
	vfmov	$18,$6                  	# [13] 
	.loc	1	176	0
	mov	8,$17                     	# [13] 
.BB58_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_63746
	.loc	1	177	0
	ldw	$20,1152($sp)             	# [0] anon34
	ldl	$19,1320($sp)             	# [0] anon62
	.loc	1	176	0
	putr	$6,$17                   	# [1] 
	.loc	1	177	0
	addw	$20,7,$24                	# [3] 
	selge	$20,$20,$24,$20         	# [4] 
	sra	$20,3,$20                 	# [5] 
	sll	$20,4,$20                 	# [6] 
	addl	$19,$20,$19              	# [7] 
	ldde	$19,0($19)               	# [8] id:720
	vstd	$19,1536($sp)            	# [12] anon58+64
	#nop
	vfmov	$19,$5                  	# [14] 
	.loc	1	178	0
	mov	8,$18                     	# [14] 
.BB59_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_63746
	.loc	1	179	0
	ldw	$17,1152($sp)             	# [0] anon34
	ldl	$19,1320($sp)             	# [0] anon62
	.loc	1	178	0
	putr	$5,$18                   	# [1] 
	.loc	1	179	0
	addw	$17,7,$20                	# [3] 
	selge	$17,$17,$20,$17         	# [4] 
	sra	$17,3,$17                 	# [5] 
	s4subl	$17,$17,$17            	# [6] 
	s8addl	$17,$19,$17            	# [7] 
	ldde	$17,0($17)               	# [8] id:723
	vstd	$17,1568($sp)            	# [12] anon58+96
	#nop
	vfmov	$17,$6                  	# [14] 
	.loc	1	180	0
	mov	8,$16                     	# [14] 
.BB60_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_63746
	putr	$6,$16                   	# [1] 
	.loc	1	173	0
	br	$31,.Lt_0_73218            	# [1] 
.Lt_0_55042:
#<loop> Part of loop body line 65536, head labeled .Lt_0_54786
	.loc	1	124	0
	vldd	$5,64($sp)               	# [0] anon49
	zapnot	$31,15,$27             	# [0] 
	.loc	1	117	0
	mov	$31,$18                   	# [0] 
	.loc	1	126	0
	addl	$12,$9,$6                	# [0] 
	.loc	1	128	0
	cmple	$10,$28,$25             	# [1] 
	mov	$28,$8                    	# [1] 
	br	$31,.Lt_0_72450            	# [1] 
.Lt_0_74242:
#<loop> Part of loop body line 65536, head labeled .Lt_0_51714
	.loc	1	111	0
	ldl	$13,1752($sp)             	# [0] _temp_gra_spill15
	ldw	$27,1144($sp)             	# [0] anon36
	ldl	$11,1632($sp)             	# [1] _temp_gra_spill0
	mulw	$13,$27,$13              	# [3] 
	s8addl	$13,$31,$26            	# [10] 
	br	$31,.Lt_0_54274            	# [10] 
.Lt_0_51970:
#<loop> Part of loop body line 65536, head labeled .Lt_0_51714
	.loc	1	109	0
	ldl	$6,1776($sp)              	# [0] param
	ldw	$5,1152($sp)              	# [0] anon34
	.loc	1	107	0
	zapnot	$31,15,$18             	# [0] 
	.loc	1	103	0
	mov	$31,$24                   	# [0] 
	.loc	1	107	0
	ldw	$8,1124($sp)              	# [1] anon41
	.loc	1	109	0
	ldw	$1,1160($sp)              	# [1] anon28
	ldl	$6,8($6)                  	# [3] id:690
	.loc	1	107	0
	mulw	$31,$8,$8                	# [4] 
	.loc	1	109	0
	mulw	$5,$1,$5                 	# [5] 
	br	$31,.Lt_0_72194            	# [5] 
.BB97_convforward_p_simd_rc_c:
	.loc	1	86	0
	ldw	$0,1152($sp) #$0=Ni              	# [0] anon34
	ldw	$2,1140($sp) #$2=No             	# [0] anon37
	ldw	$5,1124($sp) #$5=B             	# [1] anon41
	ldw	$3,1136($sp) #$3=K             	# [1] anon38
	ldw	$1,1120($sp) #$1=CoStride             	# [2] anon42
	mull	$0,$2,$4     #$4=Ni*No            	# [3] 
	mull	$5,$2,$2     #$2=B*No            	# [4] 
	mull	$0,$5,$0     #$0=Ni*B            	# [5] 
	##s8addl	$4,$31,$4    #$4=Ni*No*8          	# [10] 
	##s8addl	$2,$31,$2    #$2=B*No*8          	# [11] 
	srl	$4,3,$4   #$4=Ni*No/8         	# [11] 
	srl	$2,3,$2   #$2=B*No/8                	# [12] 
	mull	$3,$4,$3                 	# [12] 
	s8addl	$0,$31,$0              	# [12] 
	mull	$1,$2,$1                 	# [13] 
	srl	$0,6,$0                   	# [13] 
	addl	$0,$0,$0                 	# [14] 
	stl	$0,1704($sp)              	# [15] _temp_gra_spill9
	stl	$3,1712($sp)              	# [19] _temp_gra_spill10
	stl	$1,1696($sp)              	# [20] _temp_gra_spill8
.Lt_0_50434:
	.loc	1	248	0
# 244  
# 245    }//CoStart
# 246  
# 247  
# 248    ldm_free(local_input, sizeof(Type)*Ni*B/8/8*2);
	ldl	$16,1112($sp)             	# [0] anon43
	ldl	$17,1704($sp)             	# [0] _temp_gra_spill9
	.globl	ldm_free
	bsr	$26,ldm_free              	# [0] ldm_free
.BB99_convforward_p_simd_rc_c:
	.loc	1	249	0
# 249    ldm_free(local_weight, sizeof(Type)*Ni*No/8/8*K);
	ldl	$16,1096($sp)             	# [0] anon45
	ldl	$17,1712($sp)             	# [0] _temp_gra_spill10
	.loc	1	248	0
	ldih	$gp,0($26)               	!gpdisp!6	# [0] 0
	ldi	$gp,0+8($gp)              	!gpdisp!6	# [1] 0
	.loc	1	249	0
	bsr	$26,ldm_free              	# [1] ldm_free
.BB100_convforward_p_simd_rc_c:
	.loc	1	250	0
# 250    ldm_free(local_output, sizeof(Type)*No*B/8/8*CStride);
	ldl	$16,1088($sp)             	# [0] anon46
	ldl	$17,1696($sp)             	# [0] _temp_gra_spill8
	.loc	1	249	0
	ldih	$gp,0($26)               	!gpdisp!7	# [0] 0
	ldi	$gp,0+8($gp)              	!gpdisp!7	# [1] 0
	.loc	1	250	0
	bsr	$26,ldm_free              	# [1] ldm_free
.BB101_convforward_p_simd_rc_c:
	ldih	$gp,0($26)               	!gpdisp!8	# [0] 0
	ldl	$26,0($sp)                	# [0] return_address
	ldl	$9,1648($sp)              	# [1] _temp_gra_spill2
	ldl	$10,1640($sp)             	# [1] _temp_gra_spill1
	ldi	$gp,0($gp)                	!gpdisp!8	# [1] 0
	ldl	$11,1688($sp)             	# [2] _temp_gra_spill7
	ldl	$12,1680($sp)             	# [2] _temp_gra_spill6
	ldl	$13,1672($sp)             	# [3] _temp_gra_spill5
	ldl	$14,1664($sp)             	# [3] _temp_gra_spill4
	ldl	$15,1656($sp)             	# [4] _temp_gra_spill3
	ldi	$sp,1792($sp)             	# [4] 
	ret	$31,($26),1               	# [4] 
	.align	4
.BB133_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_61954
	.loc	1	204	0
	ldw	$8,1152($sp)              	# [0] anon34
	.loc	1	206	0
	ldw	$10,1124($sp)             	# [0] anon41
	sll	$19,7,$11                 	# [0] 
	.loc	1	153	0
	ldi	$16,192($sp)              	# [0] anon63
	.loc	1	204	0
	addw	$8,7,$27                 	# [3] 
	.loc	1	206	0
	addw	$10,7,$25                	# [3] 
	.loc	1	204	0
	selge	$8,$8,$27,$8            	# [4] 
	.loc	1	206	0
	selge	$10,$10,$25,$10         	# [4] 
	.loc	1	204	0
	sra	$8,3,$8                   	# [5] 
	.loc	1	206	0
	sra	$10,3,$10                 	# [5] 
	.loc	1	250	0
	br	$31,.Lt_0_63234            	# [5] 
.BB134_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_61186
	.loc	1	210	0
	ldw	$24,1124($sp)             	# [0] anon41
	.loc	1	209	0
	ldw	$1,1152($sp)              	# [0] anon34
	.loc	1	147	0
	addw	$8,4,$8                  	# [0] 
	.loc	1	210	0
	s4subl	$24,$24,$16            	# [3] 
	.loc	1	209	0
	srl	$1,63,$27                 	# [3] 
	.loc	1	208	0
	addw	$24,31,$2                	# [3] 
	.loc	1	210	0
	sextw	$16,$16                 	# [4] 
	.loc	1	209	0
	addw	$27,$1,$27               	# [4] 
	.loc	1	208	0
	selge	$24,$24,$2,$24          	# [4] 
	.loc	1	210	0
	addw	$16,31,$28               	# [5] 
	.loc	1	209	0
	sra	$27,1,$27                 	# [5] 
	.loc	1	208	0
	sra	$24,5,$24                 	# [5] 
	.loc	1	210	0
	selge	$16,$16,$28,$16         	# [6] 
	.loc	1	209	0
	s8addl	$27,$5,$5              	# [6] 
	.loc	1	210	0
	sra	$16,5,$16                 	# [7] 
	.loc	1	250	0
	br	$31,.Lt_0_61442            	# [7] 
.BB135_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_60418
	.loc	1	141	0
	addw	$17,1,$17                	# [0] 
	cmple	$17,7,$5                	# [1] 
	.loc	1	250	0
	br	$31,.Lt_0_60674            	# [1] 
.BB138_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_58882
	.loc	1	218	0
	ldw	$3,1276($sp)              	# [0] anon30
	mov	1,$4                      	# [0] 
	.loc	1	219	0
	mov	1,$2                      	# [0] 
	.loc	1	128	0
	addw	$8,1,$8                  	# [0] 
	cmplt	$8,$10,$18              	# [1] 
	.loc	1	218	0
	subw	$4,$3,$3                 	# [3] 
	stw	$3,1276($sp)              	# [4] anon30
	.loc	1	219	0
	ldw	$1,1272($sp)              	# [4] anon31
	subw	$2,$1,$1                 	# [7] 
#	.body
#	.label_state 1
	stw	$1,1272($sp)              	# [8] anon31
	.loc	1	250	0
	br	$31,.Lt_0_59138            	# [8] 
.BB141_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_54786
	.loc	1	226	0
#	.body
	ldl	$5,1752($sp)              	# [0] _temp_gra_spill15
	subw	$10,$28,$8               	# [0] 
	.loc	1	111	0
	addw	$11,1,$11                	# [0] 
	.loc	1	226	0
	addw	$8,1,$8                  	# [1] 
	mulw	$5,$8,$5                 	# [3] 
	.loc	1	250	0
	br	$31,.Lt_0_58370            	# [3] 
.BB143_convforward_p_simd_rc_c:
#<loop> Part of loop body line 65536, head labeled .Lt_0_51714
	.loc	1	242	0
	ldw	$6,1136($sp)              	# [0] anon38
	.loc	1	96	0
	ldw	$5,1132($sp)              	# [0] anon39
#	.restore $sp
	addw	$16,1,$16                	# [0] 
	.loc	1	242	0
	mulw	$13,$6,$6                	# [3] 
	.loc	1	96	0
#	.body
#	.copy_state 1
	cmplt	$16,$5,$5               	# [3] 
	.loc	1	250	0
	br	$31,.Lt_0_72706            	# [3] 
.L_CC_convforward_p_simd_rc_c:
# PU cycle count: 0.000000
	.end	convforward_p_simd_rc_c

	.section .rodata
	.org 0x0
	.align	0
	# offset 0
	.ascii	"\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"	# doublev4 0.00000
	.weak	_tdata_local_start
	.weak	_tdata_local_end
	.weak	_tdata_private_start
	.weak	_tdata_private_end
	.weak	_tdata_local_fix_end
	.section .tdata
	.align	0
	.section .tdata_local_fix
	.align	5
	.section .text1
	.align	4
	.section .bss
	.align	5
	.section .rodata
	.align	5
#	.gpvalue 0

	.section .debug_info, "", "progbits"
	.align	0
	.byte	0x74, 0x00, 0x00, 0x00, 0x02, 0x00
	.long	.debug_abbrev
	.long	0x6f630108, 0x665f6572, 0x74636e75, 0x736e6f69
	.long	0x6f00632e, 0x436e6570, 0x2e352043, 0x2d313234
	.byte	0x73, 0x77, 0x2d, 0x34, 0x36, 0x30, 0x00, 0x01
	.byte	0x00
	.long	.debug_line
	.long	0x63120102, 0x66766e6f, 0x6177726f, 0x705f6472
	.long	0x6d69735f, 0x63725f64, 0x0100635f, 0x1e920401
	.byte	0x80, 0x0e
	.quad	.BB1_convforward_p_simd_rc_c
	.quad	.L_CC_convforward_p_simd_rc_c
	.byte	0x03, 0x01, 0x12, 0x70, 0x61, 0x72, 0x61, 0x6d
	.byte	0x00, 0x02, 0x91, 0x70, 0x00, 0x00, 0x00

	.section .debug_frame, "", "progbits"
	.align	0

	.section .debug_aranges, "", "progbits"
	.align	0
	.byte	0x2c, 0x00, 0x00, 0x00, 0x02, 0x00
	.long	.debug_info
	.byte	0x08, 0x00, 0x00, 0x00, 0x00, 0x00
	.quad	.BB1_convforward_p_simd_rc_c
	.quad	.L_CC_convforward_p_simd_rc_c - .BB1_convforward_p_simd_rc_c
	.long	0x00000000, 0x00000000, 0x00000000, 0x00000000

	.section .debug_pubnames, "", "progbits"
	.align	0
	.byte	0x2a, 0x00, 0x00, 0x00, 0x02, 0x00
	.long	.debug_info
	.long	0x00000078, 0x00000037, 0x766e6f63, 0x77726f66
	.long	0x5f647261, 0x69735f70, 0x725f646d, 0x00635f63
	.byte	0x00, 0x00, 0x00, 0x00

	.section .eh_frame, "a", "progbits"
	.align	0

.LEHCIE:
	.long	.LEHCIE_end - .LEHCIE_begin
.LEHCIE_begin:
	.long 0x0
	.byte	0x01, 0x00, 0x01, 0x78, 0x1a, 0x0c, 0x1e, 0x00
	.align 3
.LEHCIE_end:

	.section .debug_abbrev, "", "progbits"
	.align	0
	.long	0x03011101, 0x13082508, 0x100b420b, 0x02000006
	.long	0x0b3a012e, 0x08030b3b, 0x408b0c3f, 0x110a400c
	.long	0x00011201, 0x00050300, 0x0b3b0b3a, 0x0a020803
	.byte	0x00, 0x00, 0x00, 0x00
	.section	.note.GNU-stack,"",@progbits
	.ident	"#SWCC Version 5.421-sw-460 : core_functions.c compiled with : -O3 -msimd "

