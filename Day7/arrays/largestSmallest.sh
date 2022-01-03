#! /bin/bash -x

declare -a RandomValue

for ((i=0;i<10;i++))
do
        RandomValue[i]=$((RANDOM%1000))
done

biggest=${RandomValue[0]}
smallest=${RandomValue[0]}

secondbiggest=${RandomValue[0]}
secondsmallest=${RandomValue[0]}

for i in ${RandomValue[@]}
do
        if [[ $i -gt $biggest ]]
        then
                biggest="$i"
        fi

        if [[ $i -gt $secondbiggest ]]  && [[ $i -lt $biggest ]]
        then
                secondbiggest="$i"
        fi

        if [[ $i -lt $smallest ]]
        then
                smallest="$i"
        fi

        if [[ $i -lt $secondsmallest ]] && [[ $i -gt $smallest ]]
        then
                secondsmallest="$i"
        fi

done

echo "The second largest number is $secondbiggest"
echo "The second smallest number is $secondsmallest"

