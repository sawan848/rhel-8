#!/usr/bin/bash

output=$(cat /etc/passwd | awk -F':' '{print $1}' )

for i in ${output[$@]}
do
	echo "username is bss_$i"
done


exit 0
