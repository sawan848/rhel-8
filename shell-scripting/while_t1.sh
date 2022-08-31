#!/usr/bin/bash

count=0

while [ $count -lt 5 ]
do
	echo "Hello there"
	sleep 1
	count=$((count+1))
done
