#!/bin/bash

SHADOW_FILE="/etc/shadow"

if [ -f $SHADOW_FILE ]
then
	echo "Shadow passwords are enabled."
fi

if [ -w $SHADOW_FILE ]
then
	echo "You have permissions to edit /etc/shadow."
else
	echo "You do NOT have permissions to edit /etc/shadow."
fi
