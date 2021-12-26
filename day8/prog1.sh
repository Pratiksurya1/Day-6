#!/bin/bash -x

i=0
declare -A die
while [ true ]
do
i=$(($i+1))
randomNum=$((RANDOM%6 + 1))
die[$i]=$randomNum

	if  [ $randomNum -eq $i ]
	then
	  flag1=$(($flag1+1))
	elif [ $randomNum -eq 2 ]
	then
	  flag2=$(($flag2+1))
	elif [ $randomNum -eq 3 ]
	then
	  flag3=$(($flag3+1))
	elif [ $randomNum -eq 4 ]
	then
	  flag4=$(($flag4+1))
	elif [ $randomNum -eq 5 ]
	then
	  flag5=$(($flag5+1))
	elif [ $randomNum -eq 6 ]
	then
	  flag6=$(($flag6+1))
	fi
#.............................................

if [[ $flag1 -eq 10 || $flag2 -eq 10 || $flag3 -eq 10 || $flag4 -eq 10 || $flag5 -eq 10 || $flag6 -eq 10 ]]
then
echo "1 repeats $flag1 times"
echo "2 repeats $flag2 times"
echo "3 repeats $flag3 times"
echo "4 repeats $flag4 times"
echo "5 repeats $flag5 times"
echo "6 repeats $flag6 times"
break
fi
done
#..........

array=( $flag1 $flag2 $flag3 $flag4 $flag5 $flag6 )

max=0
min=${array[0]}

for((i=0; i<${#array[@]}; i++))
do
	if [ ${array[i]} -gt $max ]
	then
	   max=${array[i]}
	fi
for((a=0; a<${#array[@]}; a++))
do
	if [ ${array[a]} -lt $min ]
	then
	  min=${array[a]}
	fi
done
done
echo "largest number is $max"
echo "smallest number is : $min"
