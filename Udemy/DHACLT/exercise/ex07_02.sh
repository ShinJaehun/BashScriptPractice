#!/bin/bash

read -p "How many lines of /etc/passwd would you like to see? " USER_LINE 
LINE_NUMBER=1
while read LINE
do
	echo "${LINE}"
	if [ $LINE_NUMBER = $USER_LINE ]
	then
		break
	fi
	((LINE_NUMBER++))
done < /etc/passwd
