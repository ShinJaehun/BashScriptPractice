#!/bin/bash
# for 루프의 [list]에 명령어 치환을 쓰기.

NUMBERS="9 7 3 8 37.53"

for number in `echo $NUMBERS`  # for number in 9 7 3 8 37.53
do
  echo "$number "
done

echo 
exit 0
