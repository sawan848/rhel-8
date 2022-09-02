#!/usr/bin/bash

count=0

function cleanUp()
{
	echo "Received signals and cleanup files"
	echo "cleanup code"
	echo "Signals received is $1"
}

trap 'cleanUp  SIGINT; exit 1' SIGINT 
trap 'cleanUp  SIGHUP; exit 1' SIGHUP 
trap 'cleanUp  SIGILL; exit 1' SIGILL

while :
do
	echo "Hi there $count"
	count=$((count+1))
	sleep 1
done
