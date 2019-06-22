#!/bin/bash

LIMIT=19  # 상한선

echo
echo "3,11을 제외하고 1부터 20까지 출력."

a=0

while [ $a -le "$LIMIT" ]
do
 a=$(($a+1))

 if [ "$a" -eq 3 ] || [ "$a" -eq 11 ]  # 3,11을 제외
 then
   continue  # 이번 루프의 나머지 부분을 건너뜀.
 fi

 echo -n "$a "
done 

# 독자들을 위한 연습문제:
# 루프가 왜 20까지 찍을까요?

echo; echo

echo 1부터 20까지 찍지만 2다음에 무슨 일인가가 일어납니다.

##################################################################

# 똑같은 루프지만 'continue'를 'break'로 바꿨습니다.

a=0

while [ "$a" -le "$LIMIT" ]
do
 a=$(($a+1))

 if [ "$a" -gt 2 ]
 then
   break  # 루프 나머지를 모두 건너뜀.
 fi

 echo -n "$a "
done

echo; echo; echo

exit 0
