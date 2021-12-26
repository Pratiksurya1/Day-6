#!/bin/bash -x

declare -A array
 read -p "Enter reng 0 to 100" num
  p=$(($num/10))
	for((i=0; i<=$p; i++))
	do
	  temp=$(($i*10+$i))
	if [ $temp -ne 0 ]
	then
	array[$i]=$temp
	fi
	done
	echo ${array[@]}

