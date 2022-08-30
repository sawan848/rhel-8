#!/usr/bin/bash

my_function() {
	f="rere"
	return $f
}

my_function
echo $?
