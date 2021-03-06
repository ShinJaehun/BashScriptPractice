
#!/bin/bash
# 떠돌이별 목록.

for planet in Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune Pluto
do
  echo $planet
done

echo

# 따옴표로 묶인 전체 '목록'은 한 개의 변수를 만들어 냅니다.
for planet in "Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune Pluto"
do
  echo $planet
done

echo

planets="Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune Pluto"
for planet in $planets
do
  echo $planet
done

echo
echo

for p in $@
do
  echo $p
done

echo

for p in $*
do
  echo $p
done

echo

for p in "$@"
do
  echo $p
done

echo


for p in "$*"
do
  echo $p
done

echo
exit 0
