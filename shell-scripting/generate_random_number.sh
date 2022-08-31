#!/usr/bin/bash

#This program generates a random number between
## 1 1000

for i in `seq 1 20`
do 
	echo $((RANDOM%1000))
done

