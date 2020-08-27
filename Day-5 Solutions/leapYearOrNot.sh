#! /bin/bash -x
read -p "Enter the year " year
if [ $((year % 4)) -eq 0 ]
then
	if [ $((year % 100)) -eq 0 ]
	then
		if [ $((year % 400)) -eq 0 ]
		then
			echo "Year is a Leap Year"
		else
			echo "Year is Not a Leap Year"
		fi
	else
		echo "Year is a Leap Year"
	fi
else
	echo "Year is Not a Leap Year"
fi
