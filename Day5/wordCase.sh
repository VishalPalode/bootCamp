#!/bin/bash

read -p "Enter single digitno:" Num

case $Num in

0)
  echo "zero";;
1)
  echo"one";;
2)
  echo "two";;
3)
  echo "three";;
4)
  echo "four";;
5)
  echo "five";;
6)
  echo "six";;
7)
  echo "seven";;
8)
  echo "eight";;
9)
  echo "nine";;
*)
  echo "not a single digit no";;
esac
