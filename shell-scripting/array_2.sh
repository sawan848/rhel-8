#!/usr/bin/bash

#This program reads the host ip address separated by space
#and tells whether its alive or not

echo -e "Please enter the ip address separed by space"
read -a ip_list


for i in ${ip_list[@]}
do
	echo "--------------------------"
	ping -c 1 -w 3 $i 2>&1 >>ip_error.log
	if [ $? -eq 0 ]
	then
		echo "Host $i is alive"
	else
		echo "Host $i is down"
	fi
done


