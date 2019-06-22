#!/bin/bash
# symlinks.sh: 디렉토리에 들어 있는 심볼릭 링크를 나열하기.

ARGS=1                 # 명령어줄 인자가 한 개 있어야 됩니다.
OUTFILE=symlinks.list  # 저장할 파일

if [ $# -ne "$ARGS" ]  # 인자가 1개가 아니라면...
then
  directory=`pwd`      # 현재 작업 디렉토리
else
  directory=$1
fi

echo "\"$directory\" 디렉토리의 심볼릭 링크들"

for file in "$( find $directory -type l )"   # -type l = 심볼릭 링크
do
  echo "$file"
done | sort > "$OUTFILE"                     # 루프의 표준 출력이
#           ^^^^^^^^^^^^                       저장될 파일로 재지향 됩니다.

exit 0
