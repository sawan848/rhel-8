#!/usr/bin/bash

myFile="fruit_list"
counter=0

#cat $myFile | while read LINE
#do
#	counter=$((counter+1))
#done
while read LINE
do
#	echo $LINE
	counter=$((counter+1))
done < /home/hope/Documents/rhel-8/rhel-8/kafka.txt
echo "File $myFile has $counter lines"

