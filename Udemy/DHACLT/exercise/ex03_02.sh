#!/bin/bash

file_count() {

	for DIR in $@
	do
		LINE_COUNT=$(ls ${DIR} | wc -l)
		echo "${DIR}:"
		echo $LINE_COUNT
	done
}
file_count /etc /var /usr/bin

