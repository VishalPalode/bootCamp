#!/bin/bash -x
#coin flip program for heads or tails 11 times

heads=0
tails=0
while [[ "$heads" -ne 11 ]] && [[ "$tails" -ne 11 ]]
do
flip=$((RANDOM%2))
if [ $flip -eq 0 ]
then
echo "It is HEADS"
((heads++))
else
echo "It is TAILS"
((tails++))
fi
done
echo "You got Heads $heads times"
echo "You got Tails $tails times"
