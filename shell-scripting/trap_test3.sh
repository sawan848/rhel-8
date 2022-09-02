#!/usr/bin/bash

count=0

function cleanUp()
{
	echo "Received signals and cleanup files"
	exit 1
}

trap 'cleanUp' SIGHUP SIGINT SIGTRAP SIGILL

while :
do
	echo "Hi there $count"
	count=$((count+1))
	sleep 1
done
