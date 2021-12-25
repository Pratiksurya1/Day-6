#!/bin/bash -x

echo "gues the number between 1 to 100 "
randomNum=$((RANDOM%100 +1))
#.................................................................

	while [ true ]
	do
	    read -p "Enter your guess :" gues

		if [ $randomNum -eq $gues ]
		then
			echo "Your right"
	break
#.........................................................

		elif [ $randomNum -gt $gues ]
		then
			echo "Wrong..... number is greater than $gues try again"
		else
			echo "Wrong.. number is smaller than $gues try again"
		fi
	done
