#!/usr/bin/bash

#This program generates a random number between
## 1 1000

for i in `seq 1 20`
do 
	var=$((RANDOM%10))
	cp fruit_list fruit_list_${var}
done

