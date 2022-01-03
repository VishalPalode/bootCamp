#!/bin/bash



function isPrime(){
 num=$1
 #sqrt2=`awk "BEGIN{ print(sqrt($1)) }"`
 #i=${sqrt2%%.*}+1
 isItPrime=1
 for (( j=2; j<=$((num/2)); j++))
  do
    rem=$((num%j))
    if [ $rem -eq 0 ]
      then
        isItPrime=0
         break
    fi
  done
 echo $isItPrime

}


function isPalindrome(){
num=$1
temp=$num
reverse=0
while [ $num -gt 0 ]
do
 s=$((num%10))
 reverse=$((reverse*10+s))
 num=$((num/10))
done
if [ $temp -eq $reverse ]
then
 echo "It is a Palindrom"
else
 echo "It is not a Palindrome"
fi
}

read -p "ENter the number to check if it is prime palindrome " n

isPrime=$( isPrime $n )

if [ $isPrime -eq 1 ]
then
 echo "The number is prime"
 palin=$(isPalindrome $n)
 echo $palin
else
 echo "The number is not prime"
fi

