#! /bin/bash -x
read -p "Enter the number to check the number is prime or not " number
isPrime="true"
for ((i=2; i<=$number/2; i+=1))
do
	if [ $((number % i)) -eq 0 ]
	then
		isPrime="false"
	fi
done
if [ $isPrime ==  "false" ]
then
	echo "Given Number is Not a Prime Number"
else
	echo "Given Number is a Prime Number"
fi
