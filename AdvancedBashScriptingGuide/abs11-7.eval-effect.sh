#!/bin/bash

y=`eval ls -l`   # y=`ls -l` 과 비슷하지만,
echo $y          # 라인피드가 지워집니다.

y=`eval df`      # y=`df` 와 비슷하지만,
echo $y          # 라인피드가 지워집니다.

# 라인피드(LF)가 없어지기 때문에 출력을 파싱하기가 더 쉬울 것입니다.

exit 0
