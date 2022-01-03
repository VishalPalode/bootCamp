#! /bin/bash -x

read -p "Enter the number to get its factorial :" number

FACTORIAL=1

for ((i=1;i<=number;i++))
do
	FACTORIAL=$(($FACTORIAL*$i))
done
echo "Factorial of $number is $FACTORIAL"

