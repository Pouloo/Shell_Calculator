#!/bin/bash

operation ()
{
	echo "Choose type of operation"
	echo "1: Addition"
	echo "2: Substraction"
	echo "3: Multiplication"
	echo "4: Divison"
	read $1
}

operands ()
{
	echo "Choose number 1"
	read $1
	echo "Choose number 2"
	read $2
	echo -e '\n'
}

statements ()
{
	if [ $OP == 1 ]
	then
		echo "$1 + $2 =" `expr $1 + $2`
	elif [ $OP == 2 ]
	then
		echo "$1 - $2 =" `expr $1 - $2`
	elif [ $OP == 3 ]
	then
		echo "$1 * $2 =" `expr $1 \* $2`
	elif [ $OP == 4 ]
	then
		echo "(Quotient) $1 / $2 =" `expr $1 / $2`
		echo "(Remainder) =" `expr $1 % $2`
	fi
}

continuance ()
{
	echo -e '\n'
	echo "Continue with another operation?" 
	echo "1: Continue" 
	echo "0: End" 
	read CONT
}

CONT=1;
while [ $CONT == 1 ]
do
	clear
	operation OP
	if [ $OP -gt 4 ] || [ $OP -lt 1 ]
	then
		echo "Invalid input"
		sleep 0.5
		continue
	fi
	operands A B
	statements $A $B
	continuance CONT
done

clear