#!/bin/bash -x 

read -p "Enter the number to find factors:" number

declare a primeFactors
counter=0
primeFactorsOf=$number

for ((count=2 ; count<= $number ; count++ ))
do
	while (($number%$count == 0 ))
	do
		primeFactors[((counter++))]=$count
		number=$((number/count))
	done
done

echo "Prime factors of $primeFactorsOf is ${primeFactors[@]}"
