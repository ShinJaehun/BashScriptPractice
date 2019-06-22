#!/bin/bash
# timed-input.sh

# TMOUT=3            스크립트에서는 쓸모가 없습니다.

TIMELIMIT=3  # 여기서는 3초, 다른 값으로 세트할 수 있습니다.

PrintAnswer()
{
  if [ "$answer" = TIMEOUT ]
  then
    echo $answer
  else       # 두 번의 인스턴스를 구분하기 위해서.
    echo "제일 좋아하는 야채는 $answer 이군요."
    kill $!  # 백그라운드에서 도는 TimerOn 함수가 더 이상 필요없기 때문에 kill 시킴.
             # $! 는 백그라운드에서 돌고 있는 가장 최근 작업의 PID 입니다.
  fi

}  



TimerOn()
{
  sleep $TIMELIMIT && kill -s 14 $$ &
  # 3초를 기다리고 알람 시그널(sigalarm)을 스크립트에 보냄.
}  

Int14Vector()
{
  answer="TIMEOUT"
  PrintAnswer
  exit 14
}  

trap Int14Vector 14   # 타이머 인터럽트(14)는 우리 의도대로 타임아웃을 처리함.

echo "제일 좋아하는 야채가 뭐죠? "
TimerOn
read answer
PrintAnswer


# 이는 분명히 타임아웃 입력에 대한 미봉책입니다만,
# Bash 로 할 수 있는 최선을 다한 것입니다.
# (독자들에게 도전: 더 나은 해결책을 제시해 보세요.)

# 더 우아한 다른 것이 필요하다면 C 나 C++ 의 'alarm'이나 'setitimer' 같은
# 적당한 라이브러리 함수를 써서 구현하기 바랍니다.

exit 0
