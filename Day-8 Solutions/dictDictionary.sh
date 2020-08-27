#! /usr/local/bin/bash 

declare -A diceDictionary

one=0
two=0
three=0
four=0
five=0
six=0
while [ $one -lt 10 ] && [ $two -lt 10 ] && [ $three -lt 10 ] && [ $four -lt 10 ] && [ $five -lt 10 ] && [ $six -lt 10 ]
do
	randomDice=$((RANDOM % 6 + 1))
	
	case "$randomDice" in
		1) one=$(($one + 1))
		   diceDictionary[1]=$one
		   ;;
		2) two=$(($two + 1))
                   diceDictionary[2]=$two
                   ;;
		3) three=$(($three + 1))
                   diceDictionary[3]=$three
                   ;;
		4) four=$(($four + 1))
                   diceDictionary[4]=$four
                   ;;
		5) five=$(($five + 1))
                   diceDictionary[5]=$five
                   ;;
		6) six=$(($six + 1))
                   diceDictionary[6]=$six
                   ;;
		*) echo "Try Again..."
		   ;;
	esac
done

max=-1
min=11
	
for key in "${!diceDictionary[@]}"
do
	echo "Key : $key Value : ${diceDictionary[$key]}"
done

for key in "${!diceDictionary[@]}"
do
        if [ ${diceDictionary[$key]} -ge $max ]
	then
		maxKey=$key
		max=${diceDictionary[$key]}
	fi
done

for key in "${!diceDictionary[@]}"
do
	if [ ${diceDictionary[$key]} -le $min ]
	then
		minKey=$key
		min=${diceDictionary[$key]}
	fi
done

echo "Dice $maxKey is Reached Maximum times"
echo "Dice $minKey is Reached Minimum times"
