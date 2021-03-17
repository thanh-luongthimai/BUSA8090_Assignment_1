#!/bin/bash
# save as time-signal.sh
#if time lies between 0-19 minutes, no chime; if time lies 20-39 minutes, one chime; the other two chimes
time=$(date +%M)
count=0
if test $time -lt 20 && test $time -ge 0; then
	echo ""
elif test $time -ge 20 && test $time -lt 40; then
	echo -e "\a"
else
	while test $count -lt 2; do
 	 echo -e "\a"
 	 sleep 1 # sleep for one second
 	 count=$[$count+1]
	done
fi
