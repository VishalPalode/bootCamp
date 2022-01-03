  GNU nano 5.9                                                                                              ranMaxMin.sh
#!/bin/bash -x

minvalue=1000
maxvalue=0
for(( i=0; i<5; i++ ))
do
randnum=$((RANDOM%900+100))
echo $randnum
if [ $randnum -gt $maxvalue ]
then
maxvalue=$randnum
elif [ $randnum -lt $minvalue ]
then
minvalue=$randnum
fi
done
echo "maxvalue= " $maxvalue
echo "minvalue= " $minvalue
