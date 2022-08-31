#!/usr/bin/bash

#echo "enter the input"
#read n
#read -n 3 num
#echo "the input user by is $num"
echo "enter the element in array"
read -a arr

for i in ${arr[@]}
do
	echo "The input element is $i"
done
