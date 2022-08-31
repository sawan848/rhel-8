#!/usr/bin/bash
#until is same as while loop ,
#there is only difference is that it only execute when the conidion is false

count=0
until false
do
	echo "Hi there ${count}"
	count=$((count+1))
	sleep 1

done
