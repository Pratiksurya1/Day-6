#!/bin/bash -x

declare -A inputArray
for((i=0; i<5; i++))
do
read -p "Enter $i index array vlaue : " inputArray[$i]
done
echo ${inputArray[@]}
fNum=0
sNum=0
tNum=0
#............................................

for((a=0; a<=${#inputArray[@]}; a++))
do
	fNum="${inputArray[$a]}"

for((b=$(($a+1)); b<=${#inputArray[@]}; b++))
do
	sNum="${inputArray[$b]}"
for((c=$(($b+1)); c<=${#inputArray[@]}; c++))
do
	tNum="${inputArray[$c]}"

sum=$(($fNum+$sNum+$tNum))

#..........................................

	if [ $sum == 0 ]
	then
		echo $fNum" + " $sNum" + "$tNum" =" $sum
break
fi
done
done
done

