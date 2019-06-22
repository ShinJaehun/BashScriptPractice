#!/bin/bash
# Nested "for" loops.

outer=1             # 바깥쪽 루프 카운트 셋.

# 바깥쪽 루프 시작.
for a in 1 2 3 4 5
do
  echo "바깥쪽 루프의 $outer 단계."
  echo "---------------------"
  inner=1           # 안쪽 루프 리셋.

  # 안쪽 루프 시작.
  for b in 1 2 3 4 5
  do
    echo "안쪽 루프의 $inner 단계."
    let "inner+=1"  # 안쪽 루프 카운터 증가.
  done
  # 안쪽 루프의 끝.

  let "outer+=1"    # 바깥쪽 루프 카운터 증가. 
  echo              # 바깥쪽 루프 매 단계마다 빈 줄 삽입.
done               
# 바깥쪽 루프의 끝.

exit 0
