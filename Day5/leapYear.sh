#! /bin/bash/ -x

echo "Enter the year (YYYY)"
read year

if [ $(($year % 4)) -eq 0 ] && ([ $(($year % 100)) -ne 0 ] || [ $(($year % 400)) -eq 0 ])
then
	echo " $year is Leap Year"
else
	echo " $year is Not a Leap Year"
fi
