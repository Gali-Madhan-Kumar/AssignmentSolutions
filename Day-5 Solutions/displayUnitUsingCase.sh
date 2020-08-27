#! /bin/bash -x
read -p "Enter the number between 0 - 999999 " number
case "$number" in
	[0-9])
		echo "One";;
	[0-9][0-9])
		echo "Ten";;
	[0-9][0-9][0-9])
		echo "Hundred";;
	[0-9][0-9][0-9][0-9])
		echo "Thousand";;
	[0-9][0-9][0-9][0-9][0-9])
		echo "Thousand";;
	[0-9][0-9][0-9][0-9][0-9][0-9])
		echo "Lakhs";;
	*)
		echo "Enter the number between 0 - 999999"
esac	
