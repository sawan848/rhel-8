#!/usr/bin/bash

string1="Hi there"
string2=""

## n is true if length of is nonzero

if [ -n "$string1" ]
then
	echo "length of the string is non-zero"
else 
	echo 'length of the string is zero'
fi

## z is for comparsion if string length is zero

if [ -z "$string2" ]
then
	echo "length of the string is zero"
else 
	echo 'length of the string is non-zero'
fi
