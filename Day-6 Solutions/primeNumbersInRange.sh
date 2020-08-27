#! /bin/bash
read -p "Enter the range to find the prime Numbers " range
primeNumbers=""
for ((i=1; i<=$range; i+=1))
do
	counter=0
	for ((num=i; num>=1; num-=1))
	do
		if [ $((i % num)) -eq 0 ]
		then
			(( counter += 1 ))
		fi
	done
	if [ $counter -eq 2 ]
	then
		primeNumbers+=" $i"
	fi
done
echo $primeNumbers
