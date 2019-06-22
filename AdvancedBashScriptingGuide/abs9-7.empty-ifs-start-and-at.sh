
#!/bin/bash

# $IFS 가 빈 상태로 세트됐다면,
# "$*" 와 "$@" 는 위치 매개변수를 우리가 생각하는대로 에코하지 않습니다.

mecho ()       # 위치 매개변수 에코.
{
echo "$1,$2,$3";
}


IFS=""         # 빈 상태로 세트.
set a b c      # 위치 매개변수.

mecho "$*"     # abc,,
mecho $*       # a,b,c

mecho $@       # a,b,c
mecho "$@"     # a,b,c

# $IFS 가 비어 있을 경우에 $* 와 $@ 의 동작은
# Bash 나 sh 의 버전에 따라 달라지기 때문에
# 스크립트에서 이 "기능"에 쓰는 것은 권장하지 않습니다.


# Thanks, S.C.

exit 0
