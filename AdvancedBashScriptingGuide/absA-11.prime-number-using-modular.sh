#!/bin/bash
# primes.sh: 배열을 쓰지 않고 소수(prime number)를 생성.

#  이 스크립트는 고전적인 "에라토스테네스의 체" 알고리즘을 쓰지 *않고*
#+ "%" 나머지 연산자를 써서 소수를 구하는 좀 더 직관적인 방법을 사용합니다.
#
# Stephane Chazelas 가 보내준 스크립트.


LIMIT=1000                    # 2 - 1000 의 소수

Primes()
{
 (( n = $1 + 1 ))             # 다음 정수.
 shift                        # 목록의 다음 매개변수.
  echo "_n=$n i=$i_"
 
 if (( n == LIMIT ))
 then echo $*
 return
 fi

 for i; do                    # "i"는 $n 의 이전값인 "@"로 세트됨.
   echo "-n=$n i=$i-"
   (( i * i > n )) && break   # 최적화.
   (( n % i )) && continue    # 나머지 연산자로 소수가 아닌 수를 걸러냄.
   Primes $n $@               # 루프안에서 재귀 호출.
   return
   done

   Primes $n $@ $n            # 루프밖에서 재귀 호출.
                              # 위치 매개변수로 누적(accumulate) 성공.
			      			  # "$@" 는 현재 찾은 소수의 목록입니다.
}

Primes 1

exit 0

# 무슨 일이 일어나는지 알고 싶으면 16줄과 24줄의 주석을 풀어보세요.

# 이 알고리즘과 에라토스테네스의 체 알고리즘(ex68.sh)의 속도를 비교해 보세요.

# 연습문제: 더 빠르게 실행시키기 위해서 재귀 호출을 쓰지 말고 다시 작성해 보세요.
