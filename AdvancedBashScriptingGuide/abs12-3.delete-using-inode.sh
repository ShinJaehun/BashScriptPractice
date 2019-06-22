#!/bin/bash
# idelete.sh: inode 로 파일을 지우기.

#  이 스크립트는 파일이름이 ? 나 - 처럼 부적절한 문자로 시작될 때 유용합니다.

ARGCOUNT=1                      # 인자로 파일이름이 필요함.
E_WRONGARGS=70
E_FILE_NOT_EXIST=71
E_CHANGED_MIND=72

if [ $# -ne "$ARGCOUNT" ]
then
  echo "사용법: `basename $0` filename"
  exit $E_WRONGARGS
fi  

if [ ! -e "$1" ]
then
  echo "\""$1"\" 는 존재하지 않는 파일입니다."
  exit $E_FILE_NOT_EXIST
fi  

inum=`ls -i | grep "$1" | awk '{print $1}'`
# inum = 파일의 inode (index node)
# 모든 파일은 자신의 물리적 주소 정보를 담고 있는 inode를 갖고 있습니다.

echo; echo -n "\"$1\" 를 진짜로 지우실 겁니까(y/n)? "
read answer
case "$answer" in
[nN]) echo "마음을 바꿨군요, 그렇죠?"
      exit $E_CHANGED_MIND
      ;;
*)    echo "\"$1\" 를 지우는 중.";;
esac


#find . -inum $inum -exec rm {} \;
echo ""\"$1"\" 가 지워졌습니다!"

exit 0
