#!/bin/bash

# "set-test" 스크립트

# 3개의 인자를 줘서 실행시키세요.
# 예를 들면, "./set-test one two three".

echo
echo "set \`uname -a\` 하기 전의 위치 매개변수:"
echo "첫번째 명령어줄 인자 = $1"
echo "두번째 명령어줄 인자 = $2"
echo "세번째 명령어줄 인자 = $3"

echo

set `uname -a` # `uname -a` 의 출력을 위치 매개변수로 세트

echo "set \`uname -a\` 한 다음의 위치 매개변수:"
# $1, $2, $3... 이 `uname -a` 의 결과로 다시 초기화됩니다.
echo "'uname -a' 의 첫번째 필드 = $1"
echo "'uname -a' 의 두번째 필드 = $2"
echo "'uname -a' 의 세번째 필드 = $3"
echo

exit 0
