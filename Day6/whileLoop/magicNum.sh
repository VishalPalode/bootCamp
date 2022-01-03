#!/bin/bash

echo "think of a number between 1 and 100"

leftValue=0
rightValue=100

while [ $((rightValue-leftValue)) -gt 0 ]

do
 midValue=$(((leftValue+rightValue)/2))

 read -p "is ${midValue} your number?" ans

 if [ "${ans}" == "y" ]
 then
  echo "your number is ${midValue}"
  break
 fi

 read -p "is your number between ${leftValue} and ${midValue} ?" userIp

 case "$userIp" in
  y) rightValue=$midValue ;;

  n) leftValue=$midValue ;;

 esac

done
