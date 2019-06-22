#!/bin/bash
output1=("1" "2" "3")
output2=("1 2 3")
output3=(1 2 3)
 
array=( zero one two three four five )

#echo "output1 are"
#for i in ${output1[$*]}
#do
#       echo ${i} # Only 1 printed
#done
#echo "putput2 are"
#for i in ${output2[$*]}
#do
#       echo ${i} # 1, 2, 3 printed in each lines
#done
#

echo "output1 are" ${output1[$@]}
echo "output2 are" ${output2[$@]}
echo "output3 are" ${output3[$@]}
#echo ${array[@]}
echo
echo "output1 are" ${output1[@]}
echo "output2 are" ${output2[@]}
echo "output3 are" ${output3[@]}
echo
echo "output1 are" ${output1[*]}
echo "output2 are" ${output2[*]}
echo "output3 are" ${output3[*]}
