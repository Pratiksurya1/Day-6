#!/bin/bash

#tilecount=0
countOne=0
countTo
while [ true ]
do
	randomNum=$((RANDOM%2))
#		echo $tileCount
#	if [ $tileCount -eq 11 ]
#then
#break
#fi
	if [ $randomNum -eq 0 ]
then
((countOne++))
		echo "tile"
#		((tileCount++))
	elif [ $randomNum -eq 1 ]
then
	echo "head"
	((countTo++))
fi

if [ $countTo -eq 10 ]
then
	break
elif [ $countOne -eq 10 ]
then
break
fi

done

