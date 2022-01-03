#! /bin/bash -x

read -p "Enter the number n :" n

POWER_OF_TWO=1

i=0

while [ $i -le $n ] && [ $POWER_OF_TWO -le 256 ]
do

	POWER_OF_TWO=$(( 2 * $POWER_OF_TWO ))
	echo "2^$i = $POWER_OF_TWO"
	i=$(( $i+1 ))
done
