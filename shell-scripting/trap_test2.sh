#!/usr/bin/bash

count=0

trap 'echo "Hey you are trying to  kill me" ' SIGHUP	

while :
do
	echo "Hi there $count"
	count=$((count+1))
	sleep 1
done
