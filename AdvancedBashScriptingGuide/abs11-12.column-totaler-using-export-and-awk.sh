#!/bin/bash

# "column totaler" 스크립트(col-totaler.sh)의 또 다른 버전.
# 대상 파일의 주어진 지정된 컬럼을 모두 더해줌.
# 여기서는 스크립트 변수를 'awk'에게 전달하기 위해서 환경(environment)을 사용합니다.

ARGS=2
E_WRONGARGS=65

if [ $# -ne "$ARGS" ] # 원하는 수 만큼의 명령어줄 인자가 넘어왔는지 확인.
then
   echo "사용법: `basename $0` filename column-number"
   exit $E_WRONGARGS
fi

filename=$1
column_number=$2

#===== 여기까지는 원래 스크립트와 똑같습니다 =====#

export column_number
# column_number 를 환경으로 export 해서 awk 스크립트에서 다시 꺼내갈수 있게 함.


# awk 스크립트 시작.
# ------------------------------------------------
awk '{ total += $ENVIRON["column_number"]
}
END { print total }' $filename
# ------------------------------------------------
# awk script 끝.


# Stephane Chazelas 제공.

exit 0
