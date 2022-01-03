#! /bin/bash -x

read -p "Enter the input range :" input
read -p "Enter the output range :" output

DIVISIBLE=0

echo "Prime number between the input and output range are :"

for ((j=input;j<=output;j++))
do
	COUNT=0
	for  ((i=1;i<=j;i++))
	do
		if [ $(($j % $i )) -eq $DIVISIBLE ]
		then
			COUNT=$(( 1 + $COUNT ))
		fi
	done
	if [ $COUNT -eq 2 ]
	then
        	echo -n " $j "
	fi
done
