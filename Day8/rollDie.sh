#!/bin/bash

declare -A diceCount
diceCount[1]=0
diceCount[2]=0
diceCount[3]=0
diceCount[4]=0
diceCount[5]=0
diceCount[6]=0

i=0
while [[ ${diceCount[1]} -lt 10 && ${diceCount[2]} -lt 10 && ${diceCount[3]} -lt 10 && ${diceCount[4]} -lt 10 && ${diceCount[5]} -lt 10 && ${diceCount[6]} -lt 10 ]]
do

  diceVal=$((RANDOM%6+1))

  DCVal=${diceCount[$diceVal]}

  diceCount[$diceVal]=$((DCVal+1))

  echo "I" $i
  echo ${!diceCount[@]}
  echo ${diceCount[@]}
  ((i++))

done


greatest=0
least=10

greatestIndex=unset
leastIndex=unset

for((i=1;i<=6;i++))
do

  if [ ${diceCount[$i]} -gt $greatest ]
  then
   greatest=${diceCount[$i]}
   greatestIndex=$i
  fi

  if [ ${diceCount[$i]} -lt $least ]
   then
    least=${diceCount[$i]}
    leastIndex=$i
  fi

done

echo $greatestIndex "is the dice value rolled max no of times"
echo $leastIndex "is the dice value rolled least no of times"

