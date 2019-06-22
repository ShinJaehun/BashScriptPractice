#!/bin/bash
NAME=$1

if [ -e $NAME ]
then
	if [ -f $NAME ]
	then
		echo "${NAME} is a file"
		ls -l ${NAME}
	elif [ -d $NAME ]
	then
		echo "${NAME} is a directory"
		ls -l ${NAME}
	else
		echo "${NAME} is other type of file"
	fi
else
	echo "${NAME} is not exist."
fi

