#!/bin/bash

read -p "Enter N value " n
	for((i=1; i<=n; i++))
	do
	    varOne=1/$i
	    ser=$ser+$varOne
	    varTwo=$(echo | awk '{ print '1/$i'}')
	    ser1=$(echo | awk '{print '$ser1+$varTwo'}')
	done
		echo "sum series " $ser "is" $ser1
