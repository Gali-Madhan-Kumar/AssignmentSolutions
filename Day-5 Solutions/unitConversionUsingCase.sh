#! /bin/bash -x
read -p "Enter the value between 1 - 4 different unit conversions " value
case "$value" in
	1) read -p "Enter Feet to convert to Inch " feet 
		feetToInch=$((feet * 12)) 
		echo "$feetToInch Inch";;
	2) read -p "Enter Feet to convert to Meter " feet
		feetToMeter=$((feet / 3))
		echo "$feetToMeter Meters";;
	3) read -p "Enter Inch to convert to Feet " inch
                inchToFeet=$((inch / 12))
                echo "$inchToFeet Feet";;
	4) read -p "Enter Meters to convert to Feet " meters
                metersToFeet=$((meters * 3))
                echo "$metersToFeet Feet";;
	*) echo "choose the value between 1 - 4";;
esac
