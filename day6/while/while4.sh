#!/bin/bash -x

number=100
betcount=0
wincount=0

while [ true ]
do
        randomNum=$(( RANDOM%2 ))
        betcount=$(( $betcount+1 ))
        if [ $randomNum -eq 1 ]
        then
                number=$(( $num+1 ))
                wincount=$(( $wincount+1 ))
        else
                num=$(( $num-1 ))
        fi
        if [[ $num -eq 200 || $num -eq 0 ]]
        then
        break
        fi
done

echo "number is" $num
echo "bet count is" $betcount
echo "wincount is" $wincount
