#! /bin/bash -x

declare -a palindromeset

function checkPalindrome(){
        REV=0
        local check=$1
        while [ $check -ne 0 ]
        do
                lastNum=$(( $check % 10 ))
                REV=$(( $lastNum + $REV * 10 ))
                check=$(( $check/10 ))
        done
        echo $REV
}

count=0

for ((i=1;i<=100;i++))
do
        result="$( checkPalindrome $i )"
        if [ $i -eq $result ]
        then
                palindromeset[(($count))]=$i
                ((count++))
        fi
done

echo ${palindromeset[*]}

