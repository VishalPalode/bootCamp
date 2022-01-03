
#! /bin/bash -x

declare -a RandomValue

for ((i=0;i<10;i++))
do
	RandomValue[i]=$((RANDOM%1000))
done

for ((i=0;i<9;i++))
do
         for ((j=$i+1;j<=9;j++))
         do
                 if [ ${RandomValue[$i]} -gt ${RandomValue[$j]} ]
                 then
                         t=${RandomValue[$i]}
                         RandomValue[$i]=${RandomValue[$j]}
                         RandomValue[$j]=$t
                 fi
         done
done

secondbiggest=${RandomValue[8]}
secondsmallest=${RandomValue[1]}

echo "The second largest number is $secondbiggest"
echo "The second smallest number is $secondsmallest"
