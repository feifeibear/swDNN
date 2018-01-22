#########################################################################
# File Name: run.sh
# Author: THU Code Farmer
# mail: thu@thu.thu
# Created Time: Tue 27 Sep 2016 02:32:20 PM CST
#########################################################################
#!/bin/bash


#K Ro bCo Ni No
#time bsub -b -I -m 1 -p -q q_sw_qh -host_stack 2048 -share_size 6000 -n 1 -o perf.log -cgsp 64 ./example_asm 3 32 32 384 384

currentTime=`date "+%Y-%m-%d %H:%M:%S"`
CTS=`date -d "$currentTime" +%s`
echo $CTS
K=3

for((B=128; B <= 256; B += 128));
	do for((Co=32; Co <= 64; Co += 32));
		do for((Ni=128; Ni <= 384; Ni += 32));
			do for((No=128; No <= 384; No += 32));
				do echo $Co $Ni $No $B;
				time bsub -b -I -m 1 -p -q q_sw_yfb -host_stack 1024 -sw3run ./sw3run-all -sw3runarg "-a 1" -cross_size 28000 -n 1 -cgsp 64 ./example_asm $K $Co $Co $Ni $No $B >> ./log/perf.$CTS 
			done;
		done;
	done;
done;
