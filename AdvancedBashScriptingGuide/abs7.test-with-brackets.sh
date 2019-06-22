#!/bin/bash

x=2

if (($x >= 2))
then 
echo '(())테스트' true $?
else
echo '(())테스트' false $?
fi

if [ $x -ge 2 ]
then
echo '[]테스트' true $?
else
echo '[]테스트' false $?
fi


if [[ $x -ge 2 ]]
then
echo '[[]]테스트' true $?
else
echo '[[]]테스트' false $?
fi
