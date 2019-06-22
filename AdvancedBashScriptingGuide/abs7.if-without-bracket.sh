#!/bin/bash

dir=/home/shinjaehun/temp1

if cd "$dir" 2>/dev/null
then
	echo 현재 디렉토리는 $dir 입니다.
else
	echo ${dir}로 옮길 수 없음
fi

if [ -d $dir ] 
then 
	echo 참이어... $?
else 
	echo 거짓이여... $?
fi
