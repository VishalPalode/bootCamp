#!/bin/bash -x

for((i=1;i<=100;i++))

do

if [ $i -eq $(($i%10)) ]

then
        ans=$(($i*11))
        array[$i]=$ans
        echo $ans
fi

done

echo "${array[@]}"

