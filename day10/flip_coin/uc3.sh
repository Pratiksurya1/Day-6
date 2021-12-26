#!/bin/bash -x

count1=0
count2=0

while [ true ]
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
	if [ $count1 -eq 21 ]
	then
        	echo "Tails win in 21 times"
		break
	elif [ $count2 -eq 21 ]
	then
        	echo "Heads win in 21 times"
		break
	elif [ $count1 -eq 21 ] && [ $count2 -eq 21 ]
	then
		echo "Tie"
		break
	fi
done
