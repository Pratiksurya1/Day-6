#!/bin/bash
flag=1
function checkPalindrome(){
        ((n=$1))
        lastDigit=0
        rev=0

        while [ $n -gt 0 ]
        do
                lastDigit=$(( $n%10 ))
                rev=$(( $rev*10+$lastDigit ))
                n=$(( $n/10 ))
        done
if [ $rev -eq $1 ]
then
        flag=$(($flag+1))
fi

#..........................................
((num=$1))
x=0
for((i=2; i<=num/2; i++))
do

        if [ $((num%i)) -eq 0 ]
then
        x=1
fi
done
        if [ $x -eq 0 ]
then
flag=$(($flag+3))
fi

#..................................
if [ $flag -eq 2 ]
then
echo "$1 is palindrome number"

elif [ $flag -eq 4 ]
then
echo "$1 is palindrome number"

elif [ $flag -eq 5 ]
then
echo "$1 palindrome also prime number"

else
echo "$1 is not palindrome also not prime number"
fi

}
read -p "Enter first number :" num1

checkPalindrome $num1
