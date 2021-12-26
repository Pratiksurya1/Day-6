#!/bin/bash -x

random=$((RANDOM%2))

if [ $random -eq 0 ]
then
echo "Tails"
elif [ $random -eq 1 ]
then
echo "Heads"
fi

