#!/usr/bin/bash

#method 3
arr_list2=([0]="item1" [1]="item2" [2]=121 last_item)
echo ${arr_list2[0]}
echo ${arr_list2[1]}
echo ${arr_list2[2]}
echo ${arr_list2[3]}
echo -e "\n"

#method 2
arr_list=("The" "rate" "is" 45 "per kg")
echo ${arr_list[0]}
echo ${arr_list[1]}
echo ${arr_list[2]}
echo ${arr_list[3]}
echo -e "${arr_list[4]} \n"
#echo ${arr_list[5]}
printf  "${arr_list[0]}  \n \n "


#method 1 
declare -a var

var[0]="Hello"
var[1]="red"
var[2]="Apple"
var[3]=1234


echo ${var[0]}
echo ${var[1]}
echo ${var[2]}
echo ${var[3]}

declare -a names
names[0]="John"
names[1]="Jerry"
names[2]="Jnardan"
names[3]=123
names[4]="abc123"

echo ${names[0]}
echo ${names[1]}
echo ${names[2]}
echo ${names[3]}
echo ${names[4]}

