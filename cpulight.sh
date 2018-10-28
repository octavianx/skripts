#!/bin/bash


blink1-tool  --off

while( $@) ; 
do 
	CPU_IDLING=$(./cpustat.sh)
  	echo $CPU_IDLING
	if [ $CPU_IDLING -gt 10 ]
	then 
		if [ $CPU_IDLING -gt 30 ] 
		then
			if [ $CPU_IDLING -gt 40 ]
			then
			#[90,100]
				#blink1-tool  --rgb 0x00,0x00,0xff 
				CPU_COLOR=0xff,0x00,0x00
			else
			#[60,80]		
				CPU_COLOR=0xff,0xff,0x00
			fi
		else
		#	[30,60]
				CPU_COLOR=0x00,0xff,0x00
		fi
	else 
		echo $CPU_IDLING
				CPU_COLOR=0x00,0x00,0xff
	fi	
	blink1-tool --rgb $CPU_COLOR 
	sleep 1
done

