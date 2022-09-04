#!/usr/bin/bash

old_time=
new_time=
count=0

cleanUp()
{
	echo "Some cleanup performed"
	new_time=`date +%s` ##this would give time since epoch
	time_diff=$((new_time-old_time))

	if [ $time_diff -gt 0 ] && [ $time_diff -lt 3 ]
	then
			echo "Exiting program as key pressed within $time_diff"
			exit 1
	else
			old_time=$new_time
	fi

}

trap 'cleanUp SIGINT' SIGINT

while true
do 
	echo "Hello $count"
	count=$((count+1))
	sleep 1
done

