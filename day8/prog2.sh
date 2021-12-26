#!/bin/bash -x

declare -A months
num=1
while [ $num -le 50 ]
do
        var=$(( RANDOM%12+1))
        months[$num]=$var
        if [ $var -eq 1 ]
        then
                jan[$num]=$var
        elif [ $var -eq 2 ]
        then
                feb[$num]=$var
        elif [ $var -eq 3 ]
        then
                mar[$num]=$var
        elif [ $var -eq 4 ]
        then
                apr[$num]=$var
        elif [ $var -eq 5 ]
        then
                may[$num]=$var
        elif [ $var -eq 6 ]
        then
                june[$num]=$var
        elif [ $var -eq 7 ]
        then
                july[$num]=$var
        elif [ $var -eq 8 ]
        then
                aug[$num]=$var
        elif [ $var -eq 9 ]
        then
                sept[$num]=$var
        elif [ $var -eq 10 ]
        then
                oct[$num]=$var
        elif [ $var -eq 11 ]
        then
                nov[$num]=$var
        else
                dec[$num]=$var
        fi
        num=$(( $num+1 ))
done

echo ${#jan[@]} " bday in january:" [${!jan[@]}]
echo ${#feb[@]} " bday in february:" [${!feb[@]}]
echo ${#mar[@]} " bday in march" [${!mar[@]}]
echo ${#apr[@]} " bday in april" [${!apr[@]}]
echo ${#may[@]} " bday in may" [${!may[@]}]
echo ${#june[@]} " bday in june " [${!june[@]}]
echo ${#july[@]} " bday in july" [${!july[@]}]
echo ${#aug[@]} " bday in august" [${!aug[@]}]
echo ${#sept[@]} " bday in september" [${!sept[@]}]
echo ${#oct[@]} " bday in october" [${!oct[@]}]
echo ${#nov[@]} "bday in november " [${!nov[@]}]
echo ${#dec[@]} "bday in december" [${!dec[@]}]

