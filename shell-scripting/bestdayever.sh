#!/bin/bash

echo "What is your name ?"
read name

#name=$1
user=$(whoami)
date=$(date)
whereami=$(pwd)

echo "Good morning $name!!"
sleep 1

echo "You're looking good today $name!!"
sleep 1

echo "you have the best beard I've ever seen $name!!."
sleep 2

echo "You are currently logged in as $user and you are in the directory $whereami. and today is $date"
