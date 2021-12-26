#!/bin/bash -x

count1=0
count2=0

for((i=0; i<20; i++))
do
random=$((RANDOM%2))
if [ $random -eq 0 ]
then
	count1=$(($count1+1))
	echo "Tails"
elif [ $random -eq 1 ]
then
	count2=$(($count2+1))
	echo "Heads"
fi
done
	echo "Tails count is : $count1"
	echo "Heads count is : $count2"

