#!/bin/bash

read -a ip_list

for i in ${ip_list[$@]}
do
<<shin
	echo “__________________”
	ping -c 1 -w 3 $i 2>&1 >/dev/null 
if [ $? -eq 0 ]
	then
		echo “Host $i is alive”
	else
		echo “Host $i is down”
	fi
	echo "new number is ${i}"
shin
done

