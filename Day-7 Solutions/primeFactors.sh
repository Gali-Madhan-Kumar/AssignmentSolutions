#! /bin/bash
read -p "Enter the Number " number
counter=0
for ((i=2; i<=$number; i+=1))
do
	if [ $((number % i)) -eq 0 ]
	then
		isPrime=1
		for((j=2; j<=$i/2; j+=1))
		do
			if [ $((i % j)) -eq 0 ]
			then
				isPrime=0
				break
			fi
		done
		if [ $isPrime -eq 1 ]
		then
			 primeFactorsArray[((counter++))]=$i
		fi
	fi
done
echo ${primeFactorsArray[@]}

