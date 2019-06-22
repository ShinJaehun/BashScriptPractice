#!/bin/bash

. data-file    # 데이타 파일 로드.
# "source data-file"이라고 하는 것과 같지만, 이게 좀 더 이식성 있는 방법입니다.

# "data-file"은 'basename'으로 참조되기 때문에 현재 디렉토리에 꼭 있어야 됩니다.

# 이제 그 파일에 들어 있는 몇개의 데이타를 참조해 보겠습니다.

echo "variable1 (data-file 에 있는 변수) = $variable1"
echo "variable3 (data-file 에 있는 변수) = $variable3"

let "sum = $variable2 + $variable4"
echo "variable2 + variable4 (data-file 에 있는 변수) = $sum"
echo "message1 (data-file 에 있는 변수) 은 \"$message1\""
# 주의:                                    이스케이프된 쿼우트

print_message 이것은 data-file 의 message-print 함수가 보여주는 메세지입니다.


exit 0
