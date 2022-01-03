#!/bin/bash -x

read -p "enter the number n :" n

POWER_OF_TWO=1

for ((i=0;i<=n;i++))
do
   POWER_OF_TWO=$((2 * $POWER_OF_TWO))
   echo "2^$i = $POWER_OF_TWO"
done

