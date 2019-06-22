#!/bin/bash
DATE=$(date +%F)

read -p "Please enter a file extension : " EXTENSION
read -p "Please enter a file prefix : (Press ENTER for ${DATE})" PREFIX
PREFIX=${PREFIX:-${DATE}}

FILES=$(ls *.$EXTENSION)

for FILE in $FILES
do
	mv $FILE ${PREFIX}-${FILE}
done
