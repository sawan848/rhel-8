#!/usr/bin/bash

count=-40

if [ $count -gt 0 ];then
	echo "this is positive number"
	printf "my current working directory is \n $PWD \n"
else
	echo 'count is negative '
fi
