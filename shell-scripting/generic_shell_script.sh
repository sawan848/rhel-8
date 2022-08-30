#!/usr/bin/bash 

#This is a comment

get_statistics()
{
	echo "This is function"
}

# get_statistics($1 $2) #parameter function declaration

script_name=$0
command_line_args1=$1
command_line_args2=$2

get_statistics

# get_statistics param1 param2 #parameter function calling

echo "Script Name is $script_name"
echo "Script name is ${script_name} braces use"
echo "First args= ${command_line_args1}"
echo "Second args= ${command_line_args2}"

NUM=34
if [ $NUM -eq 34 ]
then
	echo "Equal"
fi

exit 0
