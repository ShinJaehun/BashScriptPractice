#!/bin/bash

SUCCESS=0
E_NOARGS=65

if [ -z "$1" ]
then
  echo "사용법 : `basename $0` dpkg-file"
  exit $E_NOARGS
fi

{
  echo
  echo "아카이브 정보"
  dpkg -l $1
  echo
  echo "아카이브 목록"
  dpkg -c $1
  echo
  dpkg -i -no-act $1
  if [ "$?" -eq $SUCCESS ]
  then
    echo "$1 는 설치될 수 있습니다."
  else
    echo "$1 는 설치될 수 없습니다."
  fi
  echo
} > "$1.test"

echo "$1.test 파일에 dpgk 테스트 결과가 저장되었습니다."

exit 0
