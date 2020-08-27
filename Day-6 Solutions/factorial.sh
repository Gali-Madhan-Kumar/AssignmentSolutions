#! /bin/bash -x
read -p "Enter the number to find the factorial " number
fact=1
for ((num=2; num<=$number; num+=1))
do
	((fact *= num))
done
echo "Factorial of $number is " $fact
	
