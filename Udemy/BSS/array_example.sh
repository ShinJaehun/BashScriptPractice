#!/bin/bash

output1=("1" "2" "3")
output2=("1 2 3")

echo "Length of an output1 is ${#output1[@]}" # 3
echo "Length of an output2 is ${#output2[@]}" # 1

echo "output1 are"
echo ${output1[@]} # 1 2 3
echo "putput2 are"
echo ${output2[@]} # 1 2 3

echo "output1 are"
for i in ${output1[@]}
do
	echo ${i} # 1, 2, 3이 각각 한 줄로 나옴
done
echo "putput2 are"
for i in ${output2[@]}
do
	echo ${i} # 1, 2, 3이 각각 한 줄로 나옴
done

echo "output1 are"
for i in ${output1[$@]}
do
	echo ${i} # 1만 나옴
done
echo "putput2 are"
for i in ${output2[$@]}
do
	echo ${i} # 1, 2, 3이 각각 한 줄로 나옴
done
<<EOF
echo "output1 are"
echo ${output1[$@]} # 1
echo "output1 are"
echo ${output2[$@]} # 1 2 3
EOF
