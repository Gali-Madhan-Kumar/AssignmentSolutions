#! /bin/bash -x
read -p "Enter the number between 0 - 999999 " number
if [ $number -ge 0 ] && [ $number -lt 10 ] 
then
	echo "One"
elif [ $number -ge 10 ] && [ $number -lt 100 ]
then
	echo "Ten"
elif [ $number -ge 100 ] && [ $number -lt 1000 ]
then 
	echo "Hundred"
elif [ $number -ge 1000 ] && [ $number -lt 100000 ]
then
	echo "Thousand"
else
	echo "Lakhs" 
fi
