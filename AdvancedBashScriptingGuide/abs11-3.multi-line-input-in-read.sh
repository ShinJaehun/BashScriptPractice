#!/bin/bash

echo

echo "\\ 로 끝나는 문자열을 입력하고 <ENTER> 를 누르세요."
echo "그 다음에 두 번째 문자열을 입력하고 <ENTER> 를 다시 누르세요."
read var1     # "var1"을 읽을 때 "\" 때문에 뉴라인이 제거됩니다.
              #     첫번째 줄 \
              #     두번째 줄

echo "var1 = $var1"
#     var1 = 첫번째 줄 두번째 줄

# "\"로 끝나는 줄을 만날 때 마다,
# var1에 문자를 계속 입력하기 위해서 다음 줄을 위한 프롬프트를 받게 됩니다.

echo; echo

echo "\\ 로 끝나는 다른 문자열을 입력하고 <ENTER> 를 누르세요."
read -r var2  # -r 옵션은 "\"를 문자 그대로 읽어 들입니다.
              #     첫번째 줄 \

echo "var2 = $var2"
#     var2 = 첫번째 줄 \

# 입력 데이타는 첫번째 <ENTER> 에서 끝나게 됩니다.

echo 

exit 0
