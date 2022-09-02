#!/usr/bin/bash

echo "This line would execute"

<< EOF
	echo "This line not execute"
	inside this << EOF everything will be not executed
	this is treated as a multi-line comment

EOF
echo "this is multiline comment"
