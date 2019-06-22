#!/bin/bash


#hello() {
#	echo "hello"
#	now
#}
#
#hello
#now() {
#	echo "It's $(date +%r)"
#}

#hello() {
#	for name in $@
#	do
#		echo "Hello ${name}"
#	done
#}
#hello Jason David Shin

#my_function() {
#	GLOBAL_VAR=1
#}
#echo $GLOBAL_VAR
#my_function
#echo $GLOBAL_VAR

#backup_file() {
#	if [ -f $1 ]
#	then
#		BACK="/tmp/$(basename ${1}).$(date +%F).$$"
#		echo "Backing up $1 to ${BACK}"
#		cp $1 $BACK
#	fi
#}
#backup_file /etc/hosts
#if [ $? -eq 0 ]
#then
#	echo "Backup succeeded!"
#fi

backup_file() {
	if [ -f $1 ]
	then
		local BACK="/tmp/$(basename ${1}).$(date +%F).$$"
		echo "Backing up $1 to ${BACK}"
		cp $1 $BACK
	else
		return 1
	fi
}
backup_file /etc/hosts

if [ $? -eq 0 ]
then
	echo "Backup succeeded!"
else
	echo "Backup failed!"
	exit 1
fi
