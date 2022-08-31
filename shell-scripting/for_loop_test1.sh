#!/usr/bin/bash

#for i in 1 2 3 4 a b c d e
#for i in {1..23}
#for i in {1..30..2}
#for i in $(seq 1 3 20)
for i in `seq 1 3 20`
#for (( i=1; i<=5; i++ ))
do
	echo $i
done
