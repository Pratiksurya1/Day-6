#!/bin/bash -x

read -p "Enter a value : " a
read -p "Enter b value : " b
read -p "Enter c vlaue : " c

declare -A dic

dic[0]=$(($a+$b*$c))
dic[1]=$(($a*$b+$c))
dic[2]=$(($c+$a/$b))
dic[3]=$(($a%$b+$c))

echo "index of dictionary ${!dic[@]}"
echo "values of dictionary ${dic[@]}"

for((i=0; i<${#dic[@]}; i++))
do
        for((j=$(($i+1)); j<${#dic[@]}; j++))
        do
        if [ "${dic[$i]}" -gt "${dic[$j]}" ]
        then
                a="${dic[$i]}"
                dic[$i]="${dic[$j]}"
                dic[$j]=$a
        fi
        done
done
echo "Ascending sort result ${dic[@]}"

