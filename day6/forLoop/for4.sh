#!/bin/bash -x

echo "enter number"
read input
read output

for((i=$input; i<=$output; i++))
do
x=0
	for((num=2; num<=$i/2; num++))
	do
		if [ $(($i%$num)) -eq 0 ]
		then
			x=1
		fi
done
		if [ $x -eq 0 ]
      		then
			echo "$i is prime Number"
		fi
done
