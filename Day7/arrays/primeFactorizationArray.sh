#! /bin/bash -x

read -p "Enter the number :" number


DIVISIBLE=0

echo "Prime factors of $number are:"
for  ((i=1;i<=number;i++))
do
        COUNT=0
        if [ $(( $number % $i )) -eq $DIVISIBLE ]
        then
                for ((j=1;j<=i;j++))
                do
                        if [ $(( $i % $j )) -eq $DIVISIBLE ]
                        then
                                COUNT=$(( 1 + $COUNT ))
                        fi
                done
        case $COUNT in
                2)      primeFactors=($i)
			echo ${primeFactors[*]}
			;;
                *)      ;;
        esac
        fi
done

