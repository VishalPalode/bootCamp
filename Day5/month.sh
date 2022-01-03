#! /bin/bash/ -x

echo "Enter the day in numeric :"
read a

echo "Enter the month in numeric"
read b

# == --> -eq , > --> -gt , >= --> ge , <= --> le , != --> -ne

if [ $b -gt 3 ] && [ $b -lt 6 ]
then
        echo "True"
elif [ $b -eq 3 ] && [ $a -ge 20 ]
then
        echo "True"
elif [ $b -eq 6 ] && [ $a -le 20 ]
then
        echo "True"
else
        echo "False"
fi

