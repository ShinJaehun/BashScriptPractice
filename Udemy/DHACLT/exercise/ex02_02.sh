#!/bin/bash
FILE_NAME=$1

if [ -f $FILE_NAME ]
then
	exit 0
elif [ -d $FILE_NAME ]
then
	exit 1
else
	exit 2
fi
