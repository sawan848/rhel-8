#!/usr/bin/bash

## Continue will work only if the signal is
# received in loop 
## Otherwise it will not work
count=0
trap 'continue' SIGINT

while true
do
	echo "hello $count"
	count=$((count+1))
	sleep 1
done

#sleep 300
