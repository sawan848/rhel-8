#!/usr/bin/bash
count=0

cleanUp()
{
	echo "cleanup called"
	trap - SIGINT
}

## trap 'cleanup SIGINT;exit 2' SIGINT
### continue will work only if the signal is returned in loop
#otherwise it will not work

trap 'cleanUp SIGINT' SIGINT

while true
do
	echo "Hello $count"
	count=$((count+1))
	sleep 1
done


