#!/bin/bash

file_count() {
#	local TEMP_FILE="count_test.tmp"
#	touch $TEMP_FILE
#	ls -l | wc -l > $TEMP_FILE
	local LINE_COUNT=$(ls | wc -l)
	echo $LINE_COUNT
	
}
file_count

