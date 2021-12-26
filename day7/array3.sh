#!/bin/bash -x

function chPrime() {
        x=$1
        flag=1
        i=2
        while [ $i -lt $x ];
        do
                if [ $(($x%$i)) -eq 0 ];
                then
                        flag=0;
                        break
                else
                        ((i++));
			echo "$x is prime number"
                fi
        done
}

function factorize() {
        primeArray=()
        y=$1
        j=2
        while [[ $y -gt 1 ]]; do
                chPrime $j;
                if [[ $flag -eq 1 ]];then
                        if [ $(($y % $j)) -eq 0 ];then
                                y=$(($y/$j));
                                primeArray+=($j);
                        else
                                ((j++));
                        fi
                else
                        ((j++))
                fi
        done
        echo $"$1 prime factors are: ${primeArray[@]}"
}


read -p "Enter a Prime Factorized: " z

        factorize $z;




