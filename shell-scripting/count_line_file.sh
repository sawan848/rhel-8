#!/usr/bin/bash

#echo 'enter the file name with extension name'
#read filename

count=0

while read LINE
do
	echo $LINE
	count=$((count+1))
done < k

echo "lines $count"
