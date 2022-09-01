#!/usr/bin/bash

counter=0

while read LINE
do
	if [ $counter -eq 10 ]
	then
		echo $LINE >> k
	fi
		#echo $LINE >> k
	counter=$((counter+1))
done < /home/hope/Documents/rhel-8/rhel-8/kafka.txt
echo "File $myFile has $counter lines"

