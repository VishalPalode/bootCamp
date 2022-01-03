#! /bin/bash -x

read -p "Enter the number n :" n

echo -n "Hn = "

for  ((i=1;i<=n;i++))
do
        echo -n "1/$i + "
done
