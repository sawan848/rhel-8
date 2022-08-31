#!/usr/bin/bash/

EXIT_EACCESS=3
EXIT_SUCCESS=0
EXIT_EPERM=2

ls -l ./abc.txt

if [ $? -ne 0 ]
then
	exit $EXIT_EPERM
fi

./exit_t2.sh
if [ $? -ne 0 ]
then
	exit 5
fi

echo "This is the normal termination"
exit $EXIT_SUCCESS
