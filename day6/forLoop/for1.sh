#!/bin/bash -x

read -p "Enter number " num

for ((i=1; $i<=10; i++))
do
a=$(( $num * $i ))
echo $num " * "$i" = "$a
done
