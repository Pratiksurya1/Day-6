#!/bin/bash -x

read -p "Enter number " num
i=1
while( true )
do
a=$(($num*$i))
echo $num " * "$i" = "$a
if [ $a -gt 256 ]
then
	break
else 
((i++))
fi
done

