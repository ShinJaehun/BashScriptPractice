
#!/bin/bash
# break-levels.sh: 루프에서 탈출하기.

# "break N" 은 N 레벨의 루프를 빠져나갑니다.

for outerloop in 1 2 3 4 5
do
  echo -n "$outerloop 그룹:   "

  for innerloop in 1 2 3 4 5
  do
    echo -n "$innerloop "

    if [ "$innerloop" -eq 3 ]
    then
      #break  # break 2  라고 하면 어떻게 될까요?
      break 2  # break 2  라고 하면 어떻게 될까요?
             # (안쪽과 바깥쪽 루프 모두에서 "탈출"(break)합니다.)
    fi
  done

  echo
done  

echo

exit 0
