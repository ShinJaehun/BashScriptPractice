#!/bin/bash
FILES=$(ls *.jpg)
DATE=$(date +%F)

for FILE in $FILES
do
	mv $FILE ${DATE}-${FILE}
done
