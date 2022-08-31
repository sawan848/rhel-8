#!/usr/bin/bash

if [ $(id -u) = "0" ]
then
	echo "you are a superuser"
else
	echo "you are not a superuser, your id is $(id -u)"
fi
