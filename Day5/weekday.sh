#! /bin/bash/ -x
read -p "enter the number=" n
if [ $n -eq 1 ]
then
    echo " Day $n is Sunday"
elif [ $n -eq 2 ]
then
    echo " Day $n is Monday"
elif [ $n -eq 3 ]
then
    echo " Day $n is Tuesday"
elif [ $n -eq 4 ]
then
    echo " Day $n is Wednesday"
elif [ $n -eq 5 ]
then
    echo " Day $n is Thursday"
elif [ $n -eq 6 ]
then
    echo " Day $n is Friday"
elif [ $n -eq 7 ]
then
    echo " Day $n is Saturday"
else
echo "enter valid number"
fi

