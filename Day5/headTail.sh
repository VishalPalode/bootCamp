#!/bin/bash/ -x

CoinCheck=$(( RANDOM % 2 ))

if [ $CoinCheck -eq 1 ]
then
	echo "its Head"
else
	echo "its Tail"
fi
