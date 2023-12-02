#!/bin/bash

CONT=1;
while [ $CONT == 1 ]
do
	clear

	echo "Choose type of operation"
	echo "1: Addition"
	echo "2: Substraction"
	echo "3: Multiplication"
	echo "4: Divison"
	echo "5: Division (Mod)"
	read OP
	if [ $OP -gt 5 ]
	then
		echo "Invalid input"
		sleep 0.5
		continue
	fi
	echo "Choose number 1"
	read A
	echo "Choose number 2"
	read B
	echo -e '\n'
	if [ $OP == 1 ]
	then
		echo "$A + $B =" `expr $A + $B`
	elif [ $OP == 2 ]
	then
		echo "$A - $B =" `expr $A - $B`
	elif [ $OP == 3 ]
	then
		echo "$A * $B =" `expr $A \* $B`
	elif [ $OP == 4 ]
	then
		echo "$A / $B =" `expr $A / $B`
	elif [ $OP == 5 ]
	then
		echo "$A % $B =" `expr $A % $B`
	fi
	echo -e '\n'
	echo "Continue with another operation?" 
	echo "1: Continue" 
	echo "0: End" 
	read CONT
done

clear