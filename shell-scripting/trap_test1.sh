#!/usr/bin/bash


trap 'echo "Hey you are trying to  kill me" ' SIGINT	

while :
do
	echo "Hi there"
	sleep 1
done
