#! /bin/bash -x
read -p "Enter the day " day
read -p "Enter the month " month
if [ $month -eq 3 ] && [ $day -ne 0 ] && [ $day -gt 19 ] && [ $day -lt 32 ]
then
	echo "true"
elif [ $month -eq 6 ] && [ $day -ne 0 ] && [ $day -lt 21 ]
then
	echo "true"
elif [ $month -gt 3 ] && [ $month -lt 6 ]
then
	if [ $day -ne 0 ] && [ $day -lt 32 ]
	then
		echo "true"
	else
		echo "false"
	fi
else
	echo "false"
fi
