#!/bin/bash -x

read -p "Enter a value : " a
read -p "Enter b value : " b
read -p "Enter c vlaue : " c

uc2=$(($a+$b*$c))
uc3=$(($a*$b+$c))

echo "u2 Ans : $uc2"
echo "uc3 Ans : $uc3"
