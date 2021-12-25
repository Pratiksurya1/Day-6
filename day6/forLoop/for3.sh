#!/bin/bash -x

echo "enter number"
read num
x=0
for((i=2; i<=num/2; i++))
do
	if [ $((num%i)) -eq 0 ]
	then
	x=1
	fi
done

	if [ $x -eq 0 ]
	then
		echo "$num is prime number"
	elif [ $x -eq 1 ]
	then
		echo "$num is not prime number"
	fi
