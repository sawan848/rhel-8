#!/usr/bin/bash
fact=1

echo 'enter the number'
read num
for i in `seq 1 $num`
do
	fact=$((fact*i))
done

echo $fact
