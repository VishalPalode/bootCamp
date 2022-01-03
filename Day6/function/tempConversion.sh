#! /bin/bash -x

function conversion(){
	local Select=$1
	case $Select in
		1)	read -p "Enter the temp in deg farades :" degF

			if [ $degF -gt 32 ] && [ $degF -lt 212 ]
			then
				degC=$(( $degF - 32 * 5/9 ))
			   	echo $degC
			else
				echo "Entered temp is boiling or frezing point"
			fi
			  ;;
		2)	read -p "Enter the temp in deg celcius :" degC

			if [ $degC -gt 0 ] && [ $degC -lt 100 ]
			then
				degF=$(( $degC * 9/5 + 32 ))
			   	echo $degF
			else
				echo "Entered temp is boiling or frezing point"
			fi
			  ;;
		*)	echo "**Invalid Selection**"
			  ;;
	esac
}

echo "1) farades to celcius"
echo "2) celcius to farades"

read -p "choose the selection from the above options :" choice

result="$( conversion $choice )"

echo $result
