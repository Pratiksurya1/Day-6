#!/bin/bash

read -p "Enter num : " num

	for ((i=2; i<=$num; i++))
	do

	    if [ $(($num%$i)) -eq 0 ]
	    then
flag=1
	for ((j=2; j<=$i/2; j++))
	do
	     if [ $(($i%$j)) -eq 0 ]
	     then
		flag=0
		break
		fi
		done

	if [ $flag -eq 1 ]
	then
		echo "prime factor :-  $i"

	fi
	fi
done

