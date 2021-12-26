#!/bin/bash -x

declare -A randomNumArray
for((i=1; i<=10; i++))
do
randomNum=$((RANDOM%400 + 100))
randomNumArray[$i]=$randomNum
done

echo ${randomNumArray[@]}
max1=0
max2=0

min1=${randomNumArray[0]}
min2=${randomNumArray[0]}

	for((x=0; x<${#randomNumArray[@]}; x++))
	do

		    if [ ${randomNumArray[x]} -gt $max1 ]
		     then
			 max1=${randomNumArray[x]}

		    fi

		    if [ ${randomNumArray[x]} -lt $min1 ]
		    then
			min1=${randomNumArray[x]}
		    fi
#......................................
	done


min=${randomNumArray[0]}

 for((y=0; y<${#randomNumArray[@]}; y++))
 do
	if [[ ${randomNumArray[y]} -gt $max2 && ${randomNumArray[y]} -ne $max1 ]]
	then
		max2=${randomNumArray[y]}
	fi
	
	if [[ ${randomNumArray[y]} -lt $min2 && ${randomNumArray[y]} -ne $min2 ]]
	then
		min2=${randomNumArray[y]}
	fi

        done



echo "First min vlaue : $min1"
echo "First max vlaue : $max1"
echo "Second min value : $min2"
echo "Second max value : $max2"
