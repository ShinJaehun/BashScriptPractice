#!/bin/bash

echo; echo "아무키나 누른 다음 리턴을 치세요."
while read Keypress
do
case "$Keypress" in
#  [X]    ) exit 0;;
#  [a-z]   ) echo "소문자";;
#  [A-Z]   ) echo "대문자";;
  [^0-9]   ) echo "숫자아님";;
#  *       ) echo "구두점이나, 공백문자 등등";;
esac  # [대괄호]속 범위의 문자들을 받아 들입니다.
done
# 독자들용 연습문제:
# 이 스크립트는 한개의 키누름만 받아들이고 종료합니다.
# 이를 키가 눌릴때마다 무슨 키인지 계속 보여주면서
# 키가 "X"일 경우에만 종료하도록 고쳐보세요.
# 힌트: "while"루프로 다 감싸면?

