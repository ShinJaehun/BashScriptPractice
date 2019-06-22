#!/bin/bash -x
#TEXT_VAR="test"
#echo $TEXT_VAR

#TEXT_VAR="test"
#set -x
#echo $TEXT_VAR
#set +x
#hostname

#FILE_NAME="./nothing"
#ls $FILE_NAME
#echo $FILE_NAME

PS4='+ ${BASH_SOURCE} : ${LINENO} : ${FUNCNAME[0]}()'
debug() {
	echo "Execuging: $@"
	$@
}

debug ls
