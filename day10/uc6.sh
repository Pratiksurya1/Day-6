#!/bin/bash -x

read -p "Enter a value : " a
read -p "Enter b value : " b
read -p "Enter c vlaue : " c

dic[0]=$(($a+$b*$c))
dic[1]=$(($a*$b+$c))
dic[2]=$(($c+$a/$b))
dic[3]=$(($a%$b+$c))

echo ${dic[@]}
