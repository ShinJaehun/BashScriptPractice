#!/bin/bash

function cleanup() 
{
	echo "Received signals and cleaning files"
	echo "clean up code : 임시 파일을 삭제한다거나..."
	echo "Signals received is $1"
}

trap 'cleanup SIGHUP; exit 1' SIGHUP
trap 'cleanup SIGINT; exit 1' SIGINT 
trap 'cleanup SIGILL; exit 1' SIGILL
while :
do
	echo "Hi there"
	sleep 1
done

