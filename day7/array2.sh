#!/bin/bash -x

declare -A array	#-A use for file declaration..
for((x=0; x<=9; x++))
do
randomNum=$((RANDOM%400 +100))
array[$x]=$randomNum
done

for((i=0; i<${#array[@]}; i++))
do
	for((j=$(($i+1)); j<${#array[@]}; j++))
	do
	if [ "${array[$i]}" -gt "${array[$j]}" ]
	then
		a="${array[$i]}"
		array[$i]="${array[$j]}"
		array[$j]=$a
	fi
	done
done
echo "second samllest ${array[1]}"
echo "second largest ${array[$((10-2))]}"
echo "${array[@]}"
