#!/bin/bash

declare -A birthCount

#The index 0 corresponds to jan-92, 1 to feb-92 on till dec-93

declare -A monthYrDict




for((i=0;i<24;i++))
do
 birthCount[$i]=0
done


for((i=0;i<50;i++))
do

bornOn=$((RANDOM%24))

echo $bornOn

#echo ${birthCount[@]}
#echo ${!birthCount[@]}


currVal=${birthCount[$bornOn]}
currVal=$((currVal+1))
birthCount[$bornOn]=$currVal

done

echo ${birthCount[@]}
echo ${!birthCount[@]}


for((i=0;i<24;i++))
do
 echo "no of people born in " $i "month and year is" ${birthCount[$i]}
done

for((i=0;i<12;i++))
do
j=$((i+12))
echo "no of people born in " $i "month is" $((${birthCount[$i]}+${birthCount[$j]}))

done

