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

	.align 4
	.ent	convforward_p_simd_rc_c
	.globl  convforward_p_simd_rc_c 	
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
	# _temp_gra_spill15 = 1752
	# _temp_gra_spill16 = 1760
##start function
	ldih	$gp,0($27)               	!gpdisp!1	# [0] 0
	ldi	$gp,0($gp)                	!gpdisp!1	# [1] 0
	
	ldi	$sp,-1792($sp)            	# [3] 
	
	stl	$26,0($sp)                	# [4] return_address
	stl	$15,1656($sp)             	# [4] _temp_gra_spill3
	stl	$14,1664($sp)             	# [5] _temp_gra_spill4
	stl	$13,1672($sp)             	# [5] _temp_gra_spill5
	stl	$12,1680($sp)             	# [6] _temp_gra_spill6
	stl	$11,1688($sp)             	# [6] _temp_gra_spill7
	stl	$10,1640($sp)             	# [7] _temp_gra_spill1
	stl	$9,1648($sp)              	# [7] _temp_gra_spill2
	
	##start user code
	stl	$16,1776($sp)             	# [8] param

	##BUG##
	ldi	$16,-1($31)               	# [8] 
	.globl	athread_get_id
	bsr	$26,athread_get_id        	# [8] athread_get_id
	###rcsr	$0, 0  #get id

	ldl	$28,1776($sp)             	# [0] param

	sra	$0, 3, $3 #rid
	and	$0, 7, $1 #cid
	stw	$3,1156($sp)#rid              	# [17] anon29
	stw	$1,1160($sp)#cid              	# [32] anon28
	stw	$0,1164($sp)              	# [18] anon27
	
	mov	1,$3                      	# [17] 
	stw	$31,1272($sp)#calc_index        # [8] anon31
	stw	$3,1276($sp)#load_index       	# [23] anon30
	
	ldw	$16,24($28)#$16<-Ni          	# [3] Ni id:602
	stw	$16,1152($sp)#Ni             	# [7] anon34
	ldw	$2,28($28)#Ri                	# [8] Ri id:603
	stw	$2,1148($sp)#Ri              	# [12] anon35
	ldw	$4,32($28)#Ci                	# [12] Ci id:604
	stw	$4,1144($sp)#Ci              	# [16] anon36
	ldw	$2,36($28)#No                	# [18] No id:605
	stw	$2,1140($sp)              	# [22] anon37
	ldw	$3,40($28) #K                	# [23] id:606 K
	stw	$3,1136($sp)#K              	# [27] anon38
	ldw	$1,44($28)#Ro                	# [27] id:607
	stw	$1,1132($sp)#Ro              	# [31] anon39
	ldw	$0,48($28)#Co                	# [32] id:608
	stw	$0,1128($sp)#Co              	# [36] anon40
	ldw	$27,52($28)#B               	# [36] id:609
	stw	$27,1124($sp)#B             	# [40] anon41
	ldw	$28,56($28)#$28=CoStride               	# [40] id:610
	stw	$28,1120($sp)#CoStride             	# [44] anon42
	
	mull	$16,$27,$16#$16<-Ni*B         	# [39] 
	srl	$16, 5, $16 #$16<-Ni*B/8/8*2
	##TYPE##
	sll	$16, 3, $16 #$16<-Ni*B/8/8*2*sizeof(DOUBLE)
	stl	$16,1704($sp)             	# [49] _temp_gra_spill9
	.globl	ldm_malloc
	bsr	$26,ldm_malloc            	# [49] ldm_malloc
	stl	$0,1112($sp)#local_input	# [5] anon43
	
	ldw	$27,1124($sp)#$27<-B             	# [1] anon41
	ldw	$2,1152($sp)#$2<-Ni              	# [1] anon34
	mulw	$27,$2,$27  #$27=Ni*B             	# [4] 
	stl	$27,1752($sp)#Ni*B			# [11] _temp_gra_spill15
	sra	$27,8,$27 #$27=Ni*B/256               	# [13] 
	stw	$27,1104($sp)#local_input_size		# [14] anon44
	
	.loc	1	41	0
	ldw	$1,1140($sp)#$1<-No              	# [0] anon37
	ldw	$28,1152($sp) #$28=Ni			# [*] anon34
	mull	$28,$1,$28 #$28=Ni*No               	# [3] 
	srl	$28,6,$28#Ni*No/8/8                	# [11] 
	ldw	$16,1136($sp)#$16=K             	# [5] anon38
	mull	$16,$28,$16 #$16=K*Ni*No/8/8           	# [12] 
	##TYPE##
	sll	$16,3,$16#$16=K*Ni*No/8/8*sizeof(DOUBLE)
	stl	$16,1712($sp)#K*Ni*No/8/8             	# [19] _temp_gra_spill10
	.globl	ldm_malloc
	bsr	$26,ldm_malloc				# [19] ldm_malloc
	stl	$0,1096($sp)#local_weight             	# [1] anon45
        

	
	ldw	$27,1124($sp) #B			# [*] anon41
	ldw	$1,1140($sp) #No			# [*] anon37
	ldw	$16,1120($sp)#$16=CoStride             	# [1] anon42
	mull	$27,$1,$27 #$27=B*No               	# [3] 
	srl	$27,6,$27 #$27=B*No/8/8                	# [11] 
	mull	$16,$27,$16 #$16=CoStride*B*No/8/8     	# [12] 
        ##TYPE##
	sll	$16,3,$16 #$16=CoStride*B*No/8/8*sizeof(DOUBLE)
	stl	$16,1696($sp)             	# [19] _temp_gra_spill8
	bsr	$26,ldm_malloc            	# [19] ldm_malloc
	stl	$0,1088($sp)              	# [20] anon46
       

	##start dma settings
	ldw	$19,1124($sp) #$19=B           	# [0] anon41
	ldi	$1,-16($31)   #??            	# [0] 
	##and -241 = set <7:4> to <0000>
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
	ldw	$6,1104($sp)			# [*]  anon44
	s8addl	$6,$31,$6			# [19] 
	s4addl	$6,$31,$6			# [20] 
	mulw	$10,$20,$1               	# [25] 
	mulw	$19,$10,$10              	# [26] 
	ldi	$3,64($sp)                	# [27] anon49
	ldi	$3,96($sp)                	# [29] anon50
	ldi	$3,128($sp)               	# [32] anon51
	sra	$19,5,$19       ##$19=B/32=B/SIMDSIZE/8       	# [33] 
	addw	$1,63,$4                 	# [33] 
	selge	$1,$1,$4,$1             	# [34] 
	s8addl	$19,$31,$3			# [35] 
	sra	$10,8,$10                 	# [35] 
	sra	$1,6,$1                   	# [35] 
	addw	$20,7,$0                 	# [36] 
	s4addl	$3,$31,$3              	# [36] 
	s8addl	$10,$31,$10            	# [36] 
	selge	$20,$20,$0,$20          	# [37] 
	ldi	$0,160($sp)               	# [37] anon52
	s4addl	$10,$31,$10            	# [37] 
	sra	$20,3,$20                 	# [38] 
	sll	$19,5,$4                  	# [38] 
	s8addl	$1,$31,$1              	# [38] 
	mov	$20,$0                    	# [39] 
	s8subl	$4,$4,$4               	# [39] 
	mov	1,$13                     	# [39] 
	s8addl	$0,$31,$11             	# [40] 
	s4subl	$0,$0,$18              	# [40] 
	mov	$13,$8                    	# [40] 
	sll	$18,4,$18                 	# [41] 
	s8addl	$0,$18,$0              	# [42] 
	mov	$13,$18                   	# [42] 
	sextw	$3,$3                   	# [42] 
	sextw	$11,$11                 	# [43] 
	sextw	$6,$6                   	# [44] 
	sextw	$10,$10                 	# [46] 
	sextw	$1,$1                   	# [47] 
	ldi	$8,0($31)                 	# [51] 
	ldi	$18,-1($31)               	# [52] 
	ldih	$8,-16($8)               	# [52] 
	ldih	$18,16($18)              	# [53] 
	and	$9,$8,$9                  	# [53] 
	and	$16,$8,$16                	# [53] 
	stw	$4,76($sp)                	# [54] anon49+12
	stw	$4,140($sp)               	# [54] anon51+12
	and	$3,$18,$3                 	# [54] 
	and	$17,$8,$17                	# [54] 
	stw	$4,172($sp)               	# [55] anon52+12
	ldi	$4,36($sp)                	# [55] anon47
	and	$7,$8,$7                  	# [55] 
	and	$11,$18,$11               	# [55] 
	stw	$0,108($sp)               	# [56] anon50+12
	sth	$4,72($sp)                	# [56] anon49+8
	ldi	$0,0($31)                 	# [56] 
	or	$3,$16,$16                 	# [56] 
	sth	$4,104($sp)               	# [57] anon50+8
	sth	$4,136($sp)               	# [57] anon51+8
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
	or	$3,$17,$17                 	# [60] 
	or	$9,$11,$9                  	# [60] 
	or	$10,$21,$21                	# [60] 
	or	$10,$12,$10                	# [60] 
	or	$0,$1,$0                   	# [61] 
	or	$2,$6,$2                   	# [61] 
	or	$3,$7,$3                   	# [61] 
	sth	$22,168($sp)              	# [62] anon52+8
	stw	$16,68($sp)               	# [62] anon49+4
	stw	$17,132($sp)              	# [63] anon51+4
	stw	$9,100($sp)               	# [63] anon50+4
	stw	$21,128($sp)              	# [64] anon51
	stw	$10,160($sp)              	# [64] anon52
	stw	$0,96($sp)                	# [65] anon50
	stw	$2,64($sp)                	# [65] anon49
	stw	$3,164($sp)               	# [66] anon52+4
	
	
	##init CoStart
	mov	$31,$28                   	# [3] 
	##DEBUG
	##br	$31, .Exit_CoStart
	br	$31,.Inloop_CoStart            	# [7] 
	
.End_CoStart:
	ldw	$5,1120($sp) #$5=CStride              	# [0] anon42
	addw	$28,$5,$5 #CoStart+=CStride            	# [3] 
	ldw	$1,1128($sp) #$1 = Co              	# [0] anon40
	mov	$5,$28      #$28=CoStart              	# [0] 
	cmplt	$5,$1,$1    #CoStart < Co            	# [3] 
	beq	$1,.Exit_CoStart				# [4] 

.Inloop_CoStart:
	
	##calc CiEnd/CoEnd
	ldw	$5,1120($sp)  #$5=CoStride            	# [2] anon42
	ldw	$3,1136($sp)  #$3=K	         	# [2] anon38
	ldw	$2,1144($sp)  #$2=Ci            	# [3] anon36
	ldw	$4,1128($sp)  #$4=Co            	# [4] anon40
	addw	$28,$5,$5     #$5=CoEnd=CoStart+CoStride     	# [5] 
	addw	$5,$3,$3      #$3=CiEnd           	# [6] 
	cmple	$3,$2,$10     #$10=(CiEnd<=Ci)          # [7] 
	cmple	$5,$4,$17     #$17=(CoEnd<=Co)          # [7] 
	seleq	$10,$2,$3,$10 #$10=CiEnd          	# [8] 
	seleq	$17,$4,$5,$17 #$17=CoEnd          	# [8] 
	cmplt	$28,$17,$1     #$1=CoStart<CoEnd       	# [0] 
	stw	$10,1168($sp)  #CiEnd           	# [0] anon54
	stw	$17,1172($sp)  #CoEnd           	# [1] anon53
	stw	$28,1176($sp)  #CoStart           	# [1] anon26
	
	##init input_ptr
	ldw	$1,1152($sp)  #$1=Ni              	# [0] anon34
	ldw	$27,1156($sp) #$27=rid             	# [0] anon29
	ldw	$25,1124($sp) #$25=B             	# [1] anon41
	ldw	$24,1160($sp) #$24=cid            	# [1] anon28
	mulw	$27,$1,$27    #$27=rid*Ni           	# [3] 
	ldl	$18,1776($sp) #$18=input            	# [3] param
	mulw	$28,$1,$12    #$12=CoStart*Ni          	# [4] 
	mulw	$24,$25,$24   #$24=cid*B           	# [5] 
	ldl	$18,0($18)    #$18=input            	# [6] id:685
	mulw	$25,$12,$12   #$12=CoStart*Ni*B         # [11] 
	sra	$27,3,$27     #$27=rid*Ni/8            	# [12] 
	mulw	$25,$27,$25   #$25=rid*Ni*B/8           # [13] 
	sra	$24,3,$24     #$24=cid*B/8            	# [14] 
	addl	$24,$25,$24   #$24=rid*Ni*B/8+cid*B/8           	 
	addl	$12,$24,$12   #input offset		# [21] 
	s8addl	$12,$18,$12   #input_ptr		# [22] 
	
	##init cRo
	mov	$31,$16       #$16=0            	# [0] 
	br	$31,.InLoop_cRo	                	# [2] 

.End_cRo:
	ldw	$27,1124($sp) #B            	# [0] anon41
	ldw	$1,1140($sp)  #No            	# [0] anon37
	subw	$17,$28,$18   #$17=CoEnd, $28=CoStart       	# [0] 
	##init jj 
	mov	$31,$24                 	# [0] 
	ldl	$6,1192($sp)  #output_ptr            	# [1] anon56
	vldd	$9,160($sp)              	# [1] anon52
	mov	$31,$8                    	# [1] 
	mulw	$27,$1,$27   #$27=B*No         	# [3] 
	s8addl	$27,$31,$25  #$25=B*No*8 	# [10] 

.InLoop_ii_put_output:
	ldl	$3,1088($sp)              	# [1] anon46
	sra	$8,3,$2
	addw	$2,$3,$2
	dma      $9,$6,$2             	# [5] 

.Begin_wait_put_output:
	##Try 1
	ldw	$1,32($sp)                	# [0] anon48
	cmpeq	$1,1,$1                 	# [3] 
	bne	$1,.End_wait_put_output 	# [4] 
	##Try 2
	ldw	$1,32($sp)                	# [0] anon48
	cmpeq	$1,1,$1                 	# [3] 
	bne	$1,.End_wait_put_output 	# [4] 
	##Try 3
	ldw	$1,32($sp)                	# [0] anon48
	cmpeq	$1,1,$1                 	# [3] 
	beq	$1,.Begin_wait_put_output 	# [4] 
.End_wait_put_output:
	addw	$24,1,$24                	# [0] jj++ 
	addw	$8,$27,$8                	# [0] 
	addl	$25,$6,$6                	# [0] 
	cmpeq	$24,$18,$1              	# [1] 
	stw	$31,32($sp)               	# [2] anon48
	beq	$1,.InLoop_ii_put_output            	# [2] 
	
	ldw	$6,1136($sp)   #K           	# [0] anon38
	addw	$16,1,$16      #cRo++          	# [0] 
	mulw	$13,$6,$6      #Ni*B*Ci*K          	# [3] 
	ldw	$5,1132($sp)   #Ro           	# [4] anon39
	s8addl	$6,$31,$18	#Ni*B*Ci*K*8			# [0] 
	subl	$12,$18,$12              	# [1] 
	addl	$26,$12,$12              	# [2] 
	cmplt	$16,$5,$5               	# [7] 
	beq	$5,.End_CoStart		 	# [2] 

.InLoop_cRo:
	###########calc output_ptr################
	ldw	$1,1140($sp)  #$1=No             	# [0] anon37
	ldw	$27,1156($sp) #$27=rid             	# [0] anon29
	ldw	$26,1128($sp) #$26=Co            	# [1] anon40
	ldw	$3,1124($sp)  #$3=B             	# [1] anon41
	ldw	$2,1160($sp)  #$2=cid            	# [2] anon28
	mulw	$27,$1,$27    #$27=rid*No           	# [3] 
	mulw	$16,$26,$26   #$26=cRo*Co           	# [4] 
	mulw	$3,$1,$25     #$25=B*No           	# [5] 
	ldl	$1,1776($sp)  #param            	# [5] param
	mulw	$3,$2,$2      #$2=cid*B           	# [6] 
	ldl	$1,16($1)     #$1=output 		# [8] id:686
	addw	$28,$26,$26   #$26=Costart+cRo*Co      	# [11] 
	sra	$27,3,$27     #$27=rid*No/8            	# [12] 
	mulw	$25,$26,$26   #$26=B*No*(CoStart+cRo*Co)   	# [12] 
	mulw	$27,$3,$3     #$3=rid*No/8*B           	# [13] 
	sra	$2,3,$2       #$2=cid*B/8            	# [15] 
	addl	$2,$3,$2      #$2=cid*B/8+rid*No/8*B           	# [20] 
	addl	$26,$2,$26    #$26=offset           	# [21] 
	s8addl	$26,$1,$26    #output_ptr         	# [22] 
	stl	$26,1192($sp)	#store output_ptr	# [12] anon56	
	
        ##init local_output
        mov	$31,$24       #$24=0 jj            	# [0] 
        ldl     $2, 1696($sp)   #sizeof local_output (tmp_spill8)
        ldl     $0, 1088($sp)   #local_output anon46
        mov     $31,$24
	sra     $2,3,$2
.InLoop_Init_Output:
        vstd    $31,0($0)
        vstd    $31,32($0)
        vstd    $31,64($0)
        vstd    $31,96($0)
        ldi     $0, 128($0)
        addw    $24,16,$24
        cmplt   $24,$2,$1
        bne     $1, .InLoop_Init_Output
	
##	##init ii (dma_get_output)
##	vldd	$9,128($sp)   #$9 dma desc           	# [0] anon51
##	stl	$27,1760($sp) #$27 rid*No/8		# [0] _temp_gra_spill16
##	mov	$31,$24       #$24=0 jj            	# [0] 
##	mov	$31,$8        #$8=0  local_output_offset      	# [0] 
##	ldl	$3,1088($sp)  #local_output            	# [1] anon46
##	subw	$17,$28,$18   #$18=CoEnd-CoStart          	# [1] 
##	mov	$26,$6        #$6=output_ptr            	# [1] 
##	##TYPE##
##	s8addl	$25,$31,$27   #$27=B*No*sizeof(DOUBLE)        	# [1] 
##.InLoop_ii_get_output:
##	mov	$8,$2 #part of loop $8
##	sra	$2,6,$2 #jj*B*No/64/SIMDSIZE*SIMDSIZE
##	##TYPE##
##	s8addl	$2,$3,$2 #local_output*sizeof(DOUBLE)   # [4] 
##	dma     $9,$6,$2				# [5] 
##.Begin_wait_get_output:
##	##Try 1
##	ldw	$0,36($sp)                	# [0] anon47
##	cmpeq	$0,1,$0                 	# [3] 
##	bne	$0,.End_wait_get_output 	# [4] 
##	##Try 2
##	ldw	$0,36($sp)                	# [0] anon47
##	cmpeq	$0,1,$0                 	# [3] 
##	bne	$0,.End_wait_get_output 	# [4] 
##	##Try 3
##	ldw	$0,36($sp)                	# [0] anon47
##	cmpeq	$0,1,$0                 	# [3] 
##	beq	$0,.Begin_wait_get_output 	# [4] 
##.End_wait_get_output:
##	stw	$31,36($sp) #replyget=0       	# [2] anon47
##	addw	$24,1,$24 #jj++               	# [0] 
##	addw	$8,$25,$8 #jj*B*No         	# [0] 
##	addl	$27,$6,$6 #output_ptr+=B*No*sizeof(DOUBLE)    	# [0] 
##	cmpeq	$24,$18,$1 #jj != CoEnd-CoStart      	# [1] 
##	beq	$1,.InLoop_ii_get_output            	# [2] 


	ldl	$6,1776($sp) #param            	# [0] param
	ldw	$5,1152($sp) #$5=Ni            	# [1] anon34
	ldw	$9,1160($sp) #$9=cid             	# [1] anon28
	ldl	$6,8($6)      #$6=weight       	# [3] id:690
	mulw	$5,$9,$5      #$5=cid*Ni           	# [4] 

	ldw	$1,1152($sp)    #$1=Ni          	# [0] anon34
	mov	$5,$13		#$13=cid*Ni
	sra	$13,3,$13       #$13=cid*Ni/8          	# [2] 
	mulw	$27,$1,$1       #$1=rid*No/8*Ni        	# [4] 
	addw	$13,$1,$13      #$13=rid*No/8*Ni+cid*Ni      	# [11] 
	s8addl	$13,$6,$13      #$13=weight_ptr       	# [12] 
	
	
	ldl	$9,1752($sp)  #$9=Ni*B         	# [0] _temp_gra_spill15
	stw	$16,1212($sp) #store cRo	# [0] anon24
	stl	$13,1200($sp) #store weight_ptr # [1] anon57

	
        ##init cKr
	mov	$31,$11         #$11=0          	# [1] 
	br	$31,.InLoop_cKr            	# [3] 


.End_cKr:
	ldw	$11,1256($sp)   #cKr          	# [0] anon17
	subw	$10,$28,$24     #CiEnd-CoStart 	# [0] 
	ldw	$16,1212($sp)   #cRo          	# [1] anon24
	addw	$24,1,$24       #CiEnd-CoStart+1    	# [1] 
	mulw	$9,$24,$5                	# [3] 
	addw	$11,1,$11                	# [3] 
	ldw	$27,1144($sp)   #Ci          	# [0] anon36
	s8addl	$5,$31,$12             	# [0] 
	ldw	$1,1136($sp)    #K          	# [1] anon38
	subl	$6,$12,$12               	# [1] 
	mulw	$9,$27,$13      #Ci*Ni*B      	# [3] 
	cmplt	$11,$1,$1               	# [4] 
	s8addl	$13,$12,$12            	# [10] 
	s8addl	$13,$31,$26     #$26=Ci*Ni*B*8       	# [10] 
	beq	$1,.End_cRo 	# [10] 


.InLoop_cKr:
	ldw	$24,1140($sp)   #$24=No          	# [0] anon37
	mov	$31,$18         #init ii          	# [0] 
	ldw	$25,1152($sp)   #$25=Ni          	# [0] anon34
	mov	$31,$8         #$8=local_weight_offset        	# [0] 
	ldl	$6,1200($sp)   #$13=weight_ptr       	# [1] anon57
        ldl	$3,1096($sp)   #$3=local_weight        	# [0] anon45
	ldw	$5,1136($sp)   #K           	# [0] anon38
	mulw	$24,$25,$24     #$24=Ni*No         	# [3] 
	vldd	$27,96($sp)    #dma          	# [0] anon50
	sra   $24,6,$25     #$24=Ni*No         	# [3] 
	ldw	$2,1104($sp)  #local_input_size     	# [0] anon44
	ldw	$26,1276($sp) #local_calc_index       	# [8] anon30
        ldl	$4,1112($sp) #$3=local_input   	# [12] anon43

.InLoop_ii_get_weight:
        addw	$18,1,$18  #ii++              	# [0] 
	s8addl	$8,$3,$0    #TYPE update local_weight_ptr # [3] 
	dma     $27,$6,$0            	# [4] 
.Begin_wait_get_weight:
	##Try 1
	ldw	$1,36($sp)                	# [0] anon47
	cmpeq	$1,1,$1                 	# [3] 
	bne	$1,.End_wait_get_weight 	# [4] 
	##Try 2
	ldw	$1,36($sp)                	# [0] anon47
	cmpeq	$1,1,$1                 	# [3] 
	bne	$1,.End_wait_get_weight 	# [4] 
	##Try 3
	ldw	$1,36($sp)                	# [0] anon47
	cmpeq	$1,1,$1                 	# [3] 
	beq	$1,.Begin_wait_get_weight 	# [4] 
.End_wait_get_weight:
        stw	$31,36($sp)               	# [4] anon47
	cmpeq   $18,$5,$1               	# [3] 
	addw	$8,$25,$8      	# [0] 
	s8addl	$24,$6,$6  #TYPE update weight_ptr         	# [0] 
	beq	$1,.InLoop_ii_get_weight        # [4] 
        stl	$6,1200($sp) #store weight_ptr	# [12] anon57
	
	##$12=input_ptr
	###$6=input_ptr+Ni*B     	# [1] 
	s8addl	$9,$12,$6
        vldd	$27,64($sp)   #dma            	# [0] anon49
        s8addl	$2,$31,$2              	# [18] 
	s4addl	$2,$4,$1               	# [19] 
	
        ###mulw	$2,$26,$2                	# [11] 
        seleq   $26,$4,$1,$2	

	dma     $27,$12,$2            	# [20] 
	
	ldw	$3,1104($sp)              	# [0] anon44
	ldl	$4,1112($sp)              	# [1] anon43
	ldw	$25,1272($sp)              	# [0] anon31
	stw	$11,1256($sp)             	# [0] anon17
	stw	$18,1248($sp)             	# [0] anon22
	s8addl	$3,$31,$3              	# [10] 
	s4addl	$3,$4,$1               	# [11] 
	seleq   $25,$4,$1,$3

.Begin_wait_get_input:
	##Try 1
	ldw	$1,36($sp)                	# [0] anon47
	cmpeq	$1,1,$1                 	# [3] 
	bne	$1,.End_wait_get_input 	# [4] 
	##Try 2
	ldw	$1,36($sp)                	# [0] anon47
	cmpeq	$1,1,$1                 	# [3] 
	bne	$1,.End_wait_get_input 	# [4] 
	##Try 3
	ldw	$1,36($sp)                	# [0] anon47
	cmpeq	$1,1,$1                 	# [3] 
	beq	$1,.Begin_wait_get_input 	# [4] 
.End_wait_get_input:
	stw	$31,36($sp)               	# [0] anon47
        
        ##init cCi
	mov	$28,$8                    	# [1] 
	
	##DEBUG
        ##br	$31,.End_cKr            	# [0] 
	br	$31,.InLoop_cCi            	# [0] 

.End_cCi:
	ldl	$9,1752($sp)	#$9=B*Ni	# [*] _temp_gra_spill15
	ldw	$10,1168($sp)   #CiEnd         	# [1] anon54
	ldw	$25,1276($sp)   #input_calc_index    	# [1] anon30
	ldw	$24,1272($sp)             	# [6] anon31
	  addw	$8,1,$8         #cCi++         	# [1] 
	ldl	$6,1264($sp)    #input_ptr     	# [2] anon55
	  cmplt	$8,$10,$18              	# [4] 
	ldw	$3,1104($sp)              	# [0] anon44
	ldl	$4,1112($sp)              	# [1] anon43
	vldd	$27,64($sp)     #dma desc          	# [1] anon49
	stw	$25,1272($sp)   #store input_load_index	# [10] anon31
	stw	$24,1276($sp)             	# [6] anon30
	  s8addl	$9,$6,$6                 	# [0] 
	s8addl	$3,$31,$3              	# [10] 
	s4addl	$3,$4,$1               	# [11] 
	seleq   $25,$4,$1,$3
	

.Begin_wait_get_input_overlap:
	##Try 1
	ldw	$1,36($sp)                	# [0] anon47
	cmpeq	$1,1,$1                 	# [3] 
	bne	$1,.End_wait_get_input_overlap	# [4] 
	##Try 2
	ldw	$1,36($sp)                	# [0] anon47
	cmpeq	$1,1,$1                 	# [3] 
	bne	$1,.End_wait_get_input_overlap	# [4] 
	##Try 3
	ldw	$1,36($sp)                	# [0] anon47
	cmpeq	$1,1,$1                 	# [3] 
	beq	$1,.Begin_wait_get_input_overlap 	# [4] 
.End_wait_get_input_overlap:
	stw	$31,36($sp)               	# [1] anon47
	beq	$18,.End_cKr 	# [1] 

.InLoop_cCi:

        dma      $27,$6,$3             	# [12] 

	##init cKc
	mov	$31,$24                   	# [0] 
	stl	$6,1264($sp)              	# [0] anon55
	stw	$8,1260($sp)              	# [0] anon16
	br	$31,.InLoop_cKc            	# [0] 

.End_cKc:
.End_cKc_I:
	ldw	$1,1136($sp)  #K            	# [0] anon38
	ldw	$8,1260($sp)  #cCi            	# [0] anon16
	ldw	$17,1172($sp) #Coend           	# [0] anon53
	ldw	$28,1176($sp) #CoStart        	# [0] anon26
	addw	$24,1,$24     #cKc++           	# [0] 
	cmplt	$24,$1,$1               	# [3] 
	beq	$1,.End_cCi 	# [4] 

.InLoop_cKc:
	subw	$8,$24,$6                	# [0] 
	cmplt	$6,$28,$1               	# [1] 
	bne	$1,.End_cCi              	# [2] 
	cmplt	$6,$17,$1               	# [0] 
	beq	$1,.End_cKc_I             	# [1]
	

	###CORE###
	stw	$24,1284($sp) #store cKc       	# [0] anon18
	stw	$6,1280($sp)  #store cCo       	# [4] anon25

	ldw	$2,1152($sp)    #$2=Ni          	# [0] anon34
	ldw	$1,1280($sp)    #$1=cCo          	# [0] anon25
	ldw	$5,1140($sp)    #$5=No          	# [1] anon37
	ldw	$6,1104($sp)    #calc_index          	# [1] anon44
	ldw	$3,1276($sp)    #input_size          	# [2] anon30
	ldw	$18,1124($sp)   #$18=B          	# [2] anon41
	mulw	$24,$2,$2       #$2=cKc*Ni         	# [3] 
	subw	$1,$28,$1       #$1=cCo-CoStart        	# [3] 
	mulw	$5,$1,$1 #$1=No*(cCo-CoStart)                	# [4] 
	  sra   $5, 3, $27 
        mulw	$6,$3,$6 #$6=calc_index*input_size            	# [5]
          vinsw   $27,$0, 2, $0    #store No/8 
	mulw	$5,$2,$5 #$5=No*cKc*Ni               	# [10] 
	mulw	$18,$1,$18  #$18=B*No*(cCo-Costart)    	# [11] 
	
	ldl	$1,1112($sp)    #$1=local_input       	# [11] anon43
	##TYPE
	s8addl	$6,$31,$6              	# [12] 
	s4addl	$6,$1,$6        #$6=local_input_ptr    	# [14] 
        vinsf   $6,$19,3,$19
	
	ldl	$1,1096($sp)    #$1=local_weight       	# [18] anon45
	##TYPE
	sra	$5,6,$5                   	# [19] 
	s8addl	$5,$1,$5        #$5=local_weight_ptr   	# [21] 
        vinsf   $5,$19,2,$19
	
	ldl	$27,1088($sp)   #$27=local_output      	# [3] anon46
	##TYPE
	sra	$18,8,$18                 	# [23] 
	s8addl	$18,$31,$18            	# [24] 
	s4addl	$18,$27,$18	#$18=local_output_ptr        	# [25] 
        vinsf   $18,$19,1,$19 
         

	##DEBUG
	##br	$31,.End_cKc_I
	
        ##init ccCore
	mov	$31,$17                   	# [0] 
	###br	$31,.InLoop_ccCore            	# [5] 
	ldw	$1,1156($sp) #rid             	# [0] anon29
	ldw	$2,1160($sp)    #cid          	# [3] anon28
	beq	$1, .InLoop_ccCore_Putc	
	br	$31,.InLoop_ccCore_Getc 

.End_ccCore:
	ldw	$17,1288($sp) #ccCore		# [*] anon19
	ldw	$1,1156($sp) #rid             	# [0] anon29
	ldw	$2,1160($sp)    #cid          	# [3] anon28
	ldw	$24,1284($sp) #cKc            	# [0] anon18
	addw	$17,1,$17                	# [0] 
	cmple	$17,7,$5                	# [1] 
	beq	$5,.End_cKc 	# [0]
	cmpeq	$1,$17,$1
	beq	$1, .InLoop_ccCore_Getc

.InLoop_ccCore_Putc:
	cmpeq	$2,$17,$2
	bne	$2, .InLoop_ccCore_Putc_Putr
	br	$31, .InLoop_ccCore_Putc_Getr
.InLoop_ccCore_Getc:
	cmpeq	$2,$17,$2
	bne	$2, .InLoop_ccCore_Getc_Putr
	br	$31, .InLoop_ccCore_Getc_Getr

########SECTION######
.InLoop_ccCore_Getc_Getr:
        
        vextf   $19,1,$18         #tmp_output_ptr        

	ldw	$29,1152($sp)  #Ni
	stw	$17,1288($sp)  #store ccCore	        # [0] anon19
	
        ##init cNo
	mov	$31,$8					# [0] 
	sra	$29,3,$29     #$29=Ni/8
	br	$31,.InLoop_cNo_Getc_Getr            	# [0] 


.InLoop_cNo_Getc_Getr:
	##init cB
	mov	$31,$24                   	# [0] 
	stw	$8,1292($sp)              	# [0] anon21
	br	$31,.InLoop_cB_Getc_Getr            	# [0] 


.InLoop_cB_Getc_Getr:
	##init cNi
	stw	$24,1296($sp)  #store cB      	# [0] anon13
	  s8addl	$19,$31,$24    #$9=B/simdsize   	# [0] 
	stl	$18,1304($sp)  #store local_output_ptr 	# [0] anon60
	  s4addl	$24,$18,$25              	 
	
	vldd	$11, 0($18)
	  s4addl	$24,$25,$26              	 
	getc	$1
	  s4addl	$24,$26,$27              	 
	getr	$7                       	# [1] 
	
	vldd	$12, 32($18)
	getc	$2
	getr	$8                       	# [2] 
	
	vldd	$13, 64($18)
	  vmad	$1,$7,$11,$11
	getc	$3
	  addw	$31,2,$28                    	# [0]
	getr	$9                       	# [2] 
	
	vldd	$14, 96($18)
	  vmad	$2,$7,$12,$12
	getc	$4
	getr	$10                       	# [2] 
	  vmad	$3,$7,$13,$13
	
	vldd	$15, 0($25)
	vldd	$16, 32($25)
	vldd	$17, 64($25)
	  vmad	$4,$7,$14,$14
	vldd	$18, 96($25)
	  getr	$7          #For pipeline!!     	# [1] 
	
	vldd	$20, 0($26)
	  vmad	$1,$8,$15,$15
	vldd	$21, 32($26)
	  vmad	$2,$8,$16,$16
	vldd	$22, 64($26)
	  vmad	$3,$8,$17,$17
	vldd	$23, 96($26)
	  vmad	$4,$8,$18,$18
	
	vldd	$24, 0($27)
	  vmad	$1,$9,$20,$20
	vldd	$25, 32($27)
	  vmad	$2,$9,$21,$21
	vldd	$26, 64($27)
	  vmad	$3,$9,$22,$22
	vldd	$27, 96($27)
	  vmad	$4,$9,$23,$23

	vmad	$1,$10,$24,$24
	  getc	$1
	vmad	$2,$10,$25,$25
	  getc	$2
	vmad	$3,$10,$26,$26
	  getc	$3
	vmad	$4,$10,$27,$27
	  getc	$4
	
.InLoop_cNi_Getc_Getr:
	vmad	$1,$7,$11,$11
	  getr	$8                       	# [2] 
	vmad	$2,$7,$12,$12
	  getr	$9                       	# [2] 
	vmad	$3,$7,$13,$13
	  getr	$10                       	# [2] 
	vmad	$4,$7,$14,$14
	
	vmad	$1,$8,$15,$15
	vmad	$2,$8,$16,$16
	  addw	$28,1,$28     #cNi++           	# [4] 
	vmad	$3,$8,$17,$17
	vmad	$4,$8,$18,$18
	vmad	$1,$9,$20,$20
	vmad	$2,$9,$21,$21
	  cmple	$29,$28,$8               	# [6] 
	vmad	$3,$9,$22,$22
	vmad	$4,$9,$23,$23
	  getr	$7                       	# [1] 
	vmad	$1,$10,$24,$24
	  getc	$1
	vmad	$2,$10,$25,$25
	  getc	$2
	vmad	$3,$10,$26,$26
	  getc	$3
	vmad	$4,$10,$27,$27
	  getc	$4	
	beq	$8,.InLoop_cNi_Getc_Getr
##	br	$31,.End_cB_Getc_Getr 	# [8] 
.End_cB_Getc_Getr:
	vmad	$1,$7,$11,$11
	  ldl	$28,1304($sp) #local_output_ptr      	# [1] anon60
	vmad	$2,$7,$12,$12
	  getr	$8                       	# [2] 
	vmad	$3,$7,$13,$13
	  getr	$9                       	# [2] 
	vmad	$4,$7,$14,$14
	  getr	$10                       	# [2] 
	vmad	$1,$8,$15,$15
	  s8addl	$19,$31,$7    #$9=B/simdsize   	# [0] 
	vmad	$2,$8,$16,$16
	  s4addl	$7,$28,$5              	 
	vmad	$3,$8,$17,$17
	  s4addl	$7,$5,$6              	 
	vmad	$4,$8,$18,$18
	  s4addl	$7,$6,$8              	 
	
	vmad	$1,$9,$20,$20
	  vstd	$11, 0($28)
	vmad	$2,$9,$21,$21
	  vstd	$12, 32($28)
	vmad	$3,$9,$22,$22
	  vstd	$13, 64($28)
	vmad	$4,$9,$23,$23
	  vstd	$14, 96($28)
	
	vmad	$1,$10,$24,$24
	  vstd	$15, 0($5)
	vmad	$2,$10,$25,$25
	  vstd	$16, 32($5)
	vmad	$3,$10,$26,$26
	  vstd	$17, 64($5)
	vmad	$4,$10,$27,$27
	  vstd	$18, 96($5)
	
	
	ldw	$9,1296($sp) #cB            	# [1] anon13
	  ldi	$18, 128($28) #update local_output_ptr
	vstd	$20, 0($6)
	vstd	$21, 32($6)
	vstd	$22, 64($6)
	vstd	$23, 96($6)
	
	vstd	$24, 0($8)
	  addw	$9,4,$24                	# [0] 
	vstd	$25, 32($8)
	  cmple	$19,$24,$0              	# [1] 
	vstd	$26, 64($8)
	vstd	$27, 96($8)

	beq	$0,.InLoop_cB_Getc_Getr 	# [5] 
	##br	$31,.End_cNo_Getc_Getr 	# [5] 
.End_cNo_Getc_Getr:
	ldw	$8,1292($sp)   #cNo           	# [0] anon21
	  s4subl	$19,$19,$0    #3*B/SIMDSIZE/8        	# [3] 
	vextw   $0, 2, $25
          s8addl	$0,$31,$0            	# [4] 
	s4addl	$0,$18,$18            	# [5] 
        addw	$8,4,$8        #cNo+=4        	# [2] 
	cmple	$25,$8,$1               # [5] 
	beq	$1,.InLoop_cNo_Getc_Getr	# [6] 
	br	$31,.End_ccCore		# [6] 


########SECTION2######
.InLoop_ccCore_Getc_Putr:

        vextf   $19,1,$18        
        vextf   $19,2,$5        
	
        ldw	$29,1152($sp)  #Ni
	stw	$17,1288($sp)             	# [0] anon19
	##init cNo
	mov	$31,$8                    	# [0] 
	sra	$29,3,$29     #$29=Ni/8
	##br	$31,.InLoop_cNo_Getc_Putr            	# [0] 

.InLoop_cNo_Getc_Putr:
	##init cB
	mov	$31,$24                   	# [0] 
	stw	$8,1292($sp)              	# [0] anon21
	##br	$31,.InLoop_cB_Getc_Putr            	# [0] 

.InLoop_cB_Getc_Putr:
	##init cNi
	stw	$24,1296($sp)  #store cB      	# [0] anon13
	  s8addl	$19,$31,$24    #$9=B/simdsize   	# [0] 
	stl	$18,1304($sp)  #store local_output_ptr 	# [0] anon60
	  s4addl	$24,$18,$25              	 
	stl	$5,1320($sp) #store local_weight_ptr  	# [1] anon62
	  s4addl	$24,$25,$26              	 
	
	vldd	$11, 0($18)
	  s4addl	$24,$26,$27              	 
	getc	$1
	ldder	$7, 0($5)
	  s8addl	$29, $5, $10
	
	vldd	$12, 32($18)
	getc	$2
	ldder	$8, 0($10)
	  s8addl	$29, $10, $10
	
	vldd	$13, 64($18)
	  vmad	$1,$7,$11,$11
	getc	$3
	  ldi	$5,8($5)                  	# [5] 
	ldder	$9, 0($10)
	  s8addl	$29, $10, $10
	
	vldd	$14, 96($18)
	  vmad	$2,$7,$12,$12
	getc	$4
	  s8addl	$29, $5, $0 
	ldder	$10, 0($10)
	  vmad	$3,$7,$13,$13
	
	vldd	$15, 0($25)
	  addw	$31,2,$28     #cNi++           	# [4] 
	vldd	$16, 32($25)
	vldd	$17, 64($25)
	  vmad	$4,$7,$14,$14
	vldd	$18, 96($25)
	  ldder	$7, 0($5)     #For pipeline! 
	
	vldd	$20, 0($26)
	  vmad	$1,$8,$15,$15
	vldd	$21, 32($26)
	  vmad	$2,$8,$16,$16
	vldd	$22, 64($26)
	  vmad	$3,$8,$17,$17
	vldd	$23, 96($26)
	  vmad	$4,$8,$18,$18
	
	vldd	$24, 0($27)
	  vmad	$1,$9,$20,$20
	vldd	$25, 32($27)
	  vmad	$2,$9,$21,$21
	vldd	$26, 64($27)
	  vmad	$3,$9,$22,$22
	vldd	$27, 96($27)
	  vmad	$4,$9,$23,$23
	
	vmad	$1,$10,$24,$24
	  getc	$1
	vmad	$2,$10,$25,$25
	  getc	$2
	vmad	$3,$10,$26,$26
	  getc	$3
	vmad	$4,$10,$27,$27
	  getc	$4
.InLoop_cNi_Getc_Putr:
	vmad	$1,$7,$11,$11
	  ldder	$8, 0($0)
	vmad	$2,$7,$12,$12
	  s8addl	$29, $0, $0
	vmad	$3,$7,$13,$13
	  ldder	$9, 0($0)
	vmad	$4,$7,$14,$14
	  s8addl	$29, $0, $0
	vmad	$1,$8,$15,$15
	  ldder	$10, 0($0)
	vmad	$2,$8,$16,$16
	  addw	$28,1,$28     #cNi++           	# [4] 
	vmad	$3,$8,$17,$17
	  ldi	$5,8($5)                  	# [5] 
	vmad	$4,$8,$18,$18
	vmad	$1,$9,$20,$20
	vmad	$2,$9,$21,$21
	  cmple	$29,$28,$8               	# [6] 
	vmad	$3,$9,$22,$22
	  ldder	$7, 0($5)
	vmad	$4,$9,$23,$23
	  s8addl	$29, $5, $0
	vmad	$1,$10,$24,$24
	  getc	$1
	vmad	$2,$10,$25,$25
	  getc	$2
	vmad	$3,$10,$26,$26
	  getc	$3
	vmad	$4,$10,$27,$27
	  getc	$4
	beq	$8,.InLoop_cNi_Getc_Putr
	##br	$31,.End_cB_Getc_Putr 	# [8] 

.End_cB_Getc_Putr:
	vmad	$1,$7,$11,$11
	  ldder	$8, 0($0)
	vmad	$2,$7,$12,$12
	  s8addl	$29, $0, $0
	vmad	$3,$7,$13,$13
	  ldder	$9, 0($0)
	vmad	$4,$7,$14,$14
	  s8addl	$29, $0, $0
	vmad	$1,$8,$15,$15
	  ldder	$10, 0($0)
	vmad	$2,$8,$16,$16
	  ldl	$28,1304($sp) #local_output_ptr      	# [1] anon60
	vmad	$3,$8,$17,$17
	  s8addl	$19,$31,$7    #$19=B/simdsize   	# [0] 
	vmad	$4,$8,$18,$18
	  s4addl	$7,$28,$8              	 
	
	vmad	$1,$9,$20,$20
	  vstd	$11, 0($28)
	vmad	$2,$9,$21,$21
	  vstd	$12, 32($28)
	vmad	$3,$9,$22,$22
	  vstd	$13, 64($28)
	vmad	$4,$9,$23,$23
	  vstd	$14, 96($28)
	
	vmad	$1,$10,$24,$24
	  vstd	$15, 0($8)
	vmad	$2,$10,$25,$25
	  vstd	$16, 32($8)
	vmad	$3,$10,$26,$26
	  vstd	$17, 64($8)
	vmad	$4,$10,$27,$27
	  vstd	$18, 96($8)
	
	
	ldw	$9,1296($sp) #cB            	# [1] anon13
	  s4addl	$7,$8,$8              	 
	
	vstd	$20, 0($8)
	vstd	$21, 32($8)
	vstd	$22, 64($8)
	vstd	$23, 96($8)
	  s4addl	$7,$8,$8              	 
	vstd	$24, 0($8)
	  addw	$9,4,$24                	# [0] 
	vstd	$25, 32($8)
	  ldi	$18, 128($28) #update local_output_ptr
	vstd	$26, 64($8)
	  cmple	$19,$24,$0              	# [1] 
	vstd	$27, 96($8)

	ldl	$5,1320($sp) #ldl local_weight_ptr  	# [1] anon62
	beq	$0,.InLoop_cB_Getc_Putr 	# [5] 
	##br	$31,.End_cNo_Getc_Putr 	# [5] 
.End_cNo_Getc_Putr:
	ldw	$8,1292($sp)   #cNo           	# [0] anon21
	  sll	$29,2,$0       #Ni/2          	# [0] 
	vextw   $0, 2, $25
	  s8addl	$0,$5,$5                 	# [1] 
	s4subl	$19,$19,$0    #3*B/SIMDSIZE/8        	# [3] 
	  s8addl	$0,$31,$0            	# [4] 
	s4addl	$0,$18,$18            	# [5] 
	  addw	$8,4,$8        #cNo+=4        	# [2] 
	cmple	$25,$8,$1               # [5] 
	beq	$1,.InLoop_cNo_Getc_Putr	# [6] 
	br	$31,.End_ccCore		# [6] 

########SECTION3######
.InLoop_ccCore_Putc_Getr:

        vextf   $19,1,$18        
        vextf   $19,3,$6        
	
        ldw	$29,1152($sp)  #Ni
	stw	$17,1288($sp)             	# [0] anon19
	##init cNo
	mov	$31,$8                    	# [0] 
	sra	$29,3,$29     #$29=Ni/8
	##br	$31,.InLoop_cNo_Putc_Getr            	# [0] 

.InLoop_cNo_Putc_Getr:
	##init cB
	mov	$31,$24                   	# [0] 
	stw	$8,1292($sp)              	# [0] anon21
	##br	$31,.InLoop_cB_Putc_Getr            	# [0] 

.InLoop_cB_Putc_Getr:
	##init cNi
	stw	$24,1296($sp)  #store cB      	# [0] anon13
	  s8addl	$19,$31,$24    #$9=B/simdsize   	# [0] 
	stl	$18,1304($sp)  #store local_output_ptr 	# [0] anon60
	  s4addl	$24,$18,$25              	 
	stl	$6,1328($sp) #store local_input_ptr	#[*] anon61
	  s4addl	$24,$25,$26              	 
	
	vldd	$11, 0($18)
	  s4addl	$24,$26,$27              	 
	vldc	$1,0($6)
	getr	$7                       	 
	
	vldd	$12, 32($18)
	vldc	$2,32($6)
	getr	$8                       	 
	
	vldd	$13, 64($18)
	  vmad	$1,$7,$11,$11
	vldc	$3,64($6)
	getr	$9                       	 
	
	vldd	$14, 96($18)
	  vmad	$2,$7,$12,$12
	vldc	$4,96($6)
	getr	$10                       	 
	  vmad	$3,$7,$13,$13
	
	vldd	$15, 0($25)
	  addw	$31,2,$28     #cNi++           	# [4] 
	vldd	$16, 32($25)
	  s4addl	$24,$6,$6              	# [8] 
	vldd	$17, 64($25)
	  vmad	$4,$7,$14,$14
	vldd	$18, 96($25)
	  getr	$7                       	 
	
	vldd	$20, 0($26)
	  vmad	$1,$8,$15,$15
	vldd	$21, 32($26)
	  vmad	$2,$8,$16,$16
	vldd	$22, 64($26)
	  vmad	$3,$8,$17,$17
	vldd	$23, 96($26)
	  vmad	$4,$8,$18,$18
	
	vldd	$24, 0($27)
	  vmad	$1,$9,$20,$20
	vldd	$25, 32($27)
	  vmad	$2,$9,$21,$21
	vldd	$26, 64($27)
	  vmad	$3,$9,$22,$22
	vldd	$27, 96($27)
	  vmad	$4,$9,$23,$23
	
	vmad	$1,$10,$24,$24
	  vldc	$1,0($6)
	vmad	$2,$10,$25,$25
	  vldc	$2,32($6)
	vmad	$3,$10,$26,$26
	  vldc	$3,64($6)
	vmad	$4,$10,$27,$27
	  vldc	$4,96($6)

.InLoop_cNi_Putc_Getr:
	vmad	$1,$7,$11,$11
	  getr	$8                       	 
	vmad	$2,$7,$12,$12
	vmad	$3,$7,$13,$13
	  getr	$9                       	 
	vmad	$4,$7,$14,$14
	vmad	$1,$8,$15,$15
	  getr	$10                       	 
	vmad	$2,$8,$16,$16
	  addw	$28,1,$28     #cNi++           	# [4] 
	vmad	$3,$8,$17,$17
	vmad	$4,$8,$18,$18
	  s8addl	$19,$31,$0             	# [7] 
	vmad	$1,$9,$20,$20
	  s4addl	$0,$6,$6              	# [8] 
	vmad	$2,$9,$21,$21
	  cmple	$29,$28,$8               	# [6] 
	vmad	$3,$9,$22,$22
	  getr	$7                       	 
	vmad	$4,$9,$23,$23
	vmad	$1,$10,$24,$24
	  vldc	$1,0($6)
	vmad	$2,$10,$25,$25
	  vldc	$2,32($6)
	vmad	$3,$10,$26,$26
	  vldc	$3,64($6)
	vmad	$4,$10,$27,$27
	  vldc	$4,96($6)
	beq	$8,.InLoop_cNi_Putc_Getr
	##br	$31,.End_cB_Putc_Getr 	# [8] 

.End_cB_Putc_Getr:
	vmad	$1,$7,$11,$11
	  getr	$8                       	 
	vmad	$2,$7,$12,$12
	  getr	$9                       	 
	vmad	$3,$7,$13,$13
	  getr	$10                       	 
	vmad	$4,$7,$14,$14
	  ldl	$28,1304($sp) #local_output_ptr      	# [1] anon60
	
	vmad	$1,$8,$15,$15
	  s8addl	$19,$31,$7    #$9=B/simdsize   	# [0] 
	vmad	$2,$8,$16,$16
	  s4addl	$7,$28,$5              	 
	vmad	$3,$8,$17,$17
	  s4addl	$7,$5,$6              	 
	vmad	$4,$8,$18,$18
	  s4addl	$7,$6,$8              	 
	
	vmad	$1,$9,$20,$20
	  vstd	$11, 0($28)
	vmad	$2,$9,$21,$21
	  vstd	$12, 32($28)
	vmad	$3,$9,$22,$22
	  vstd	$13, 64($28)
	vmad	$4,$9,$23,$23
	  vstd	$14, 96($28)
	
	vmad	$1,$10,$24,$24
	  vstd	$15, 0($5)
	vmad	$2,$10,$25,$25
	  vstd	$16, 32($5)
	vmad	$3,$10,$26,$26
	  vstd	$17, 64($5)
	vmad	$4,$10,$27,$27
	  vstd	$18, 96($5)
	
	ldw	$9,1296($sp) #cB            	# [1] anon13
	
	vstd	$20, 0($6)
	vstd	$21, 32($6)
	vstd	$22, 64($6)
	vstd	$23, 96($6)
	
	ldl	$6,1328($sp) #ldl local_input_ptr	#[*] anon61
	
	vstd	$24, 0($8)
	  addw	$9,4,$24                	# [0] 
	vstd	$25, 32($8)
	  ldi	$18, 128($28) #update local_output_ptr
	vstd	$26, 64($8)
	  cmple	$19,$24,$1              	# [1] 
	vstd	$27, 96($8)
	  ldi	$6, 128($6)   #update local_input_ptr

	beq	$1,.InLoop_cB_Putc_Getr 	# [5] 
	##br	$31,.End_cNo_Putc_Getr 	# [5] 
.End_cNo_Putc_Getr:
	ldw	$8,1292($sp)   #cNo           	# [0] anon21
	  s4subl	$19,$19,$0    #3*B/SIMDSIZE/8        	# [3] 
	vextw   $0, 2, $25
	  subw	$31,$19,$28   #-B/SIMDSIZE/8           	# [3] 
	s8addl	$0,$31,$0            	# [4] 
	  s8addl	$28,$31,$28            	# [4] 
	s4addl	$0,$18,$18            	# [5] 
	  s4addl	$28,$6,$6              	# [6] 
	addw	$8,4,$8        #cNo+=4        	# [2] 
	cmple	$25,$8,$1               # [5] 
	beq	$1,.InLoop_cNo_Putc_Getr		# [6] 
	br	$31,.End_ccCore		# [6] 

########SECTION4######
.InLoop_ccCore_Putc_Putr:

        vextf   $19,1,$18        
        vextf   $19,2,$5        
        vextf   $19,3,$6        
	
        ldw	$29,1152($sp)  #Ni
	stw	$17,1288($sp)             	# [0] anon19
	##init cNo
	mov	$31,$8                    	# [0] 
	sra	$29,3,$29     #$29=Ni/8
	##br	$31,.InLoop_cNo_Putc_Putr            	# [0] 

.InLoop_cNo_Putc_Putr:
	##init cB
	mov	$31,$24                   	# [0] 
	stw	$8,1292($sp)   #store cNo      	# [0] anon21

.InLoop_cB_Putc_Putr:
	##init cNi
	stw	$9,1296($sp)  #store cB      	# [0] anon13
	  s8addl	$19,$31,$24    #$24=B/simdsize   	# [0] 
	stl	$18,1304($sp)  #store local_output_ptr 	# [0] anon60
	  s4addl	$24,$18,$25              	 
	stl	$5,1320($sp) #store local_weight_ptr  	# [1] anon62
	  s4addl	$24,$25,$26              	 
	stl	$6,1328($sp) #store local_input_ptr	#[*] anon61
	  s4addl	$24,$26,$27              	 
	
	vldd	$11, 0($18)
	vldc	$1,0($6)	    
	ldder	$7, 0($5)	    
	  s8addl	$29, $5, $10	    
	
	vldd	$12, 32($18)
	vldc	$2,32($6)	    
	ldder	$8, 0($10)	    
	  s8addl	$29, $10, $10	    
	
	vldd	$13, 64($18)
	  vmad	$1,$7,$11,$11	    
	vldc	$3,64($6)	    
	  ldi	$5,8($5)		#update local_weight_ptr 
	ldder	$9, 0($10)
	  s8addl	$29, $10, $10
	
	vldd	$14, 96($18)
	  vmad	$2,$7,$12,$12	    
	vldc	$4,96($6)
	  s8addl	$29, $5, $0	#For pipeline!!    
	ldder	$10, 0($10)
	  vmad	$3,$7,$13,$13
	
	vldd	$15, 0($25)
	  addw  	$31,2,$28      	#init cNi
	vldd	$16, 32($25)
	  s4addl	$24,$6,$6  #updata local_input_ptr 
	vldd	$17, 64($25)
	  vmad	$4,$7,$14,$14
	vldd	$18, 96($25)
	  ldder	$7, 0($5)   #For pipeline!!	    
	
	vldd	$20, 0($26)
	  vmad	$1,$8,$15,$15
	vldd	$21, 32($26)
	  vmad	$2,$8,$16,$16
	vldd	$22, 64($26)
	  vmad	$3,$8,$17,$17
	vldd	$23, 96($26)
	  vmad	$4,$8,$18,$18
	
	vldd	$24, 0($27)
	  vmad	$1,$9,$20,$20	    
	vldd	$25, 32($27)
	  vmad	$2,$9,$21,$21	    
	vldd	$26, 64($27)
	  vmad	$3,$9,$22,$22	    
	vldd	$27, 96($27)
	  vmad	$4,$9,$23,$23	    
	
	vmad	$1,$10,$24,$24	    
	  vldc	$1, 0($6)	    
	vmad	$2,$10,$25,$25	    
	  vldc	$2,32($6)	    
	vmad	$3,$10,$26,$26	    
	  vldc	$3,64($6)	    
	vmad	$4,$10,$27,$27	    
	  vldc	$4,96($6)

.InLoop_cNi_Putc_Putr:
	vmad	$1,$7,$11,$11	    
	  ldder	$8, 0($0)	    
	vmad	$2,$7,$12,$12	    
	  s8addl	$29, $0, $0	    
	vmad	$3,$7,$13,$13
	  ldder	$9, 0($0)
	vmad	$4,$7,$14,$14
	  s8addl	$29, $0, $0
	vmad	$1,$8,$15,$15
	  ldder	$10, 0($0)
	vmad	$2,$8,$16,$16
	  addw	$28,1,$28     #cNi++ 
	vmad	$3,$8,$17,$17
	  ldi	$5,8($5)   #update local_weight_ptr 
	vmad	$4,$8,$18,$18
	  s8addl	$19,$31,$0		 
	vmad	$1,$9,$20,$20	    
	  s4addl	$0,$6,$6  #updata local_input_ptr 
	vmad	$2,$9,$21,$21	    
	  cmple	$29,$28,$8          
	vmad	$3,$9,$22,$22	    
	  ldder	$7, 0($5)	    
	vmad	$4,$9,$23,$23	    
	  s8addl	$29, $5, $0	    
	vmad	$1,$10,$24,$24	    
	  vldc	$1, 0($6)	    
	vmad	$2,$10,$25,$25	    
	  vldc	$2,32($6)	    
	vmad	$3,$10,$26,$26	    
	  vldc	$3,64($6)	    
	vmad	$4,$10,$27,$27	    
	  vldc	$4,96($6)
	beq	$8,.InLoop_cNi_Putc_Putr

.End_cB_Putc_Putr:
	vmad	$1,$7,$11,$11	    
	  ldder	$8, 0($0)	    
	vmad	$2,$7,$12,$12	    
	  s8addl	$29, $0, $0	    
	vmad	$3,$7,$13,$13
	  ldder	$9, 0($0)
	vmad	$4,$7,$14,$14
	  s8addl	$29, $0, $0
	vmad	$1,$8,$15,$15
	  ldder	$10, 0($0)
	vmad	$2,$8,$16,$16
	  ldl	$28,1304($sp) #local_output_ptr      	# [1] anon60
	vmad	$3,$8,$17,$17
	  ldl	$6,1328($sp) #ldl local_input_ptr	#[*] anon61
	vmad	$4,$8,$18,$18
	  ldl	$5,1320($sp) #ldl local_weight_ptr  	# [1] anon62
	
	ldi	$6, 128($6)   #update local_input_ptr
	  s8addl	$19,$31,$7    #$7=B/simdsize   	# [0] 
	
	vmad	$1,$9,$20,$20	    
	  vstd	$11, 0($28)
	vmad	$2,$9,$21,$21	    
	  vstd	$12, 32($28)
	vmad	$3,$9,$22,$22	    
	  vstd	$13, 64($28)
	vmad	$4,$9,$23,$23	    
	  vstd	$14, 96($28)
	
	s4addl	$7,$28,$8              	 
	  ldw	$9,1296($sp) #cB            	# [1] anon13
	
	vmad	$1,$10,$24,$24	    
	  vstd	$15, 0($8)
	vmad	$2,$10,$25,$25	    
	  vstd	$16, 32($8)
	vmad	$3,$10,$26,$26	    
	  vstd	$17, 64($8)
	vmad	$4,$10,$27,$27	    
	  vstd	$18, 96($8)
	
	ldi	$18, 128($28) #update local_output_ptr
	  s4addl	$7,$8,$8              	 
	
	vstd	$20, 0($8)
	vstd	$21, 32($8)
	vstd	$22, 64($8)
	vstd	$23, 96($8)
	  s4addl	$7,$8,$8              	 
	vstd	$24, 0($8)
	  addw	$9,4,$9                	# [0] 
	vstd	$25, 32($8)
	  cmple	$19,$9,$0              	# [1] 
	vstd	$26, 64($8)
	vstd	$27, 96($8)
	beq	$0,.InLoop_cB_Putc_Putr 	# [5] 

.End_cNo_Putc_Putr:
	ldw	$8,1292($sp)   #cNo           	# [0] anon21
	  sll	$29,2,$0       #Ni/2          	# [0] 
	vextw   $0, 2, $25
	  s8addl	$0,$5,$5                 	
	s4subl	$19,$19,$0    #3*B/SIMDSIZE/8    
	  subw	$31,$19,$28   #-B/SIMDSIZE/8     
	s8addl	$0,$31,$0            	
	  s8addl	$28,$31,$28            	
	s4addl	$0,$18,$18            	
	  s4addl	$28,$6,$6              	
        addw	$8,4,$8        #cNo+=4        	
	cmple	$25,$8,$1               
	beq	$1,.InLoop_cNo_Putc_Putr 
	br      $31,.End_ccCore		

.Exit_CoStart:
	##free ldm
	ldl	$16,1112($sp)             	# [0] anon43
	ldl	$17,1704($sp)             	# [0] _temp_gra_spill9
	bsr	$26,ldm_free              	# [0] ldm_free
	ldl	$16,1096($sp)             	# [0] anon45
	ldl	$17,1712($sp)             	# [0] _temp_gra_spill10
	bsr	$26,ldm_free              	# [1] ldm_free
	ldl	$16,1088($sp)             	# [0] anon46
	ldl	$17,1696($sp)             	# [0] _temp_gra_spill8
	bsr	$26,ldm_free              	# [1] ldm_free
	
	ldl	$26,0($sp)                	# [0] return_address
	ldl	$9,1648($sp)              	# [1] _temp_gra_spill2
	ldl	$10,1640($sp)             	# [1] _temp_gra_spill1
	ldl	$11,1688($sp)             	# [2] _temp_gra_spill7
	ldl	$12,1680($sp)             	# [2] _temp_gra_spill6
	ldl	$13,1672($sp)             	# [3] _temp_gra_spill5
	ldl	$14,1664($sp)             	# [3] _temp_gra_spill4
	ldl	$15,1656($sp)             	# [4] _temp_gra_spill3
	ldi	$sp,1792($sp)             	# [4] 
	ret	$31,($26),1               	# [4] 

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
	.byte	0x03, 0x01, 0x12, 0x70, 0x61, 0x72, 0x61, 0x6d
	.byte	0x00, 0x02, 0x91, 0x70, 0x00, 0x00, 0x00

	.section .debug_frame, "", "progbits"
	.align	0

	.section .debug_aranges, "", "progbits"
	.align	0
	.byte	0x2c, 0x00, 0x00, 0x00, 0x02, 0x00
	.long	.debug_info
	.byte	0x08, 0x00, 0x00, 0x00, 0x00, 0x00
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

