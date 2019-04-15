#!/bin/bash

File=/etc/fstab

{
read line1
read line2
} < $File

echo "$File 파일의 첫 줄 : "
echo "$line1"
echo
echo "$File 파일의 두번째 줄 : "
echo "$line2"

exit 0
