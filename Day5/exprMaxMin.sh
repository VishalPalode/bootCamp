#! /bin/bash/ -x

read -p "Enter first number :" a
read -p "Enter second number :" b
read -p "Enter third number : " c

d=$((a+b*c))
e=$((a%b+c))
f=$((c+a/b))
g=$((a*b+c))

# == --> -eq , > --> -gt , >= --> ge , <= --> le , != --> -ne

if [ $d -gt $e ] && [ $d -gt $f ] && [ $d -gt $g ]
then
        echo "Expression 1 has maximum value $d"
elif [ $e -gt $d ] && [ $e -gt $f ] && [ $e -gt $g ]
then
        echo "Expression 2 has maximum value $e"
elif [ $f -gt $d ] && [ $f -gt $e ] && [ $f -gt $g ]
then
        echo "Expression 3 has maximum value $f"
elif [ $g -gt $d ] && [ $g -gt $e ] && [ $g -gt $f ]
then
	echo "Expression 4 has maximum value $g"
else
	echo "All the values are same for the  given expression"
fi

if [ $d -lt $e ] && [ $d -lt $f ] && [ $d -lt $g ]
then
        echo "Expression 1 has minimum value $d"
elif [ $e -lt $d ] && [ $e -lt $f ] && [ $e -lt $g ]
then
        echo "Expression 2 has minimum value $e"
elif [ $f -lt $d ] && [ $f -lt $e ] && [ $f -lt $g ]
then
        echo "Expression 3 has minimum value $f"
elif [ $g -lt $d ] && [ $g -lt $e ] && [ $g -lt $f ]
then
        echo "Expression 4 has minimum value $g"
else
        echo "All the values are same for the  given expression"
fi
