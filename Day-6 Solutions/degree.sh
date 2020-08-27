#! /bin/bash
function calcDegF() {
	result=$(($1 * 9 / 5 + 32))
	echo $result
}
function calcDegC() {
	result=$(($1 - 32 * 5 / 9))
	echo $result
}
echo -e "1.degF\n2.degC"
read -p "Choose the option " option
case "$option" in
	1) read -p "Enter the Degree in Celsius " deg 
		result="$(calcDegF $((deg))) degF"
		;;
	2) read -p "Enter the Degree in Fahrenheit " deg
		result="$(calcDegC $((deg))) degC"
		;;
	*) echo "Choose the correct option"
		;;
esac
echo "$result"
