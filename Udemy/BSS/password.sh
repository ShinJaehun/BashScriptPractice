#!/bin/bash

output=$(cat /etc/passwd | awk -F':' '{print$1}')

for i in ${output[$@]}
do
#	echo "Username is new_${i}"
	echo ${i}
done
