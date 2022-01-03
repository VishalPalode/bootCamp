#! /bin/bash/ -x

read -p "Enter the number" num

case $num in

	[0-9])			echo "UNIT" ;;
	[1-9][0-9])		echo "TEN" ;;
	[1-9][0-9][0-9])	echo "HUNDRED" ;;
	[1-9][0-9][0-9][0-9])	echo "THAUSANDS";;
	*)			echo "WRONG INPUT" ;;
esac

