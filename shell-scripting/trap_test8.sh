#!/usr/bin/bash
count=0

cleanUpNew()
{
	echo "some new and extra cleanup performed"
	## This would restore the signals back
	trap - SIGINT
}

cleanUpOld()
{
	echo "some  cleanup performed"
	## This would install a new signal handler
	trap cleanUpNew SIGINT
}
## trap 'cleanup SIGINT;exit 2' SIGINT
### continue will work only if the signal is returned in loop
#otherwise it will not work

trap 'cleanUpOld SIGINT' SIGINT

while true
do
	echo "Hello $count"
	count=$((count+1))
	sleep 1
done


