#!/usr/bin/bash

filename="/home/hope/.config/Code/logs/20220821T095845/main.log"
#filename="message.log"
if [ -e $filename ]
then
	echo "$filename Exist"
fi

if [ -f $filename ]
then
	echo "$filename Exist and is a regular file"
fi
filename="/dev/sda"
#filename="sdcd1"
if [ -b $filename ]
then
	echo "filename is a block device file"
fi
filename="/dev/input/mouse0"
#filename="sdcp1"
if [ -c $filename ]
then
	echo "filename is a directory"
fi
