#! /usr/local/bin/bash

# declaring the dictionary with name birthDict

declare -A birthDict

# Initializing all the months with 0

January=0
February=0
March=0
April=0
May=0
June=0
July=0
August=0
September=0
October=0
November=0
December=0

counter=0
totalBornInYearNintyTwo=0
totalBornInYearNintyThree=0

while [ $counter -lt 50 ]
do 

	range=$((93 - 92 + 1))

	# birthYear variable is to generate the birth year either 92 or 93

	birthYear=$((RANDOM % $range + 92))

	# Assume 1 - Jan, 2 - Feb, 3 March, .....
	# birthMonth variable is to generate birth month between 1 to 12

	birthMonth=$((RANDOM % 12 + 1))

	# Increments the corresponding year so that we can know how many born in same year 

	if [ $birthYear -eq 92 ]
	then
		totalBornInYearNintyTwo=$(($totalBornInYearNintyTwo + 1))
	else
		totalBornInYearNintyThree=$(($totalBornInYearNintyThree + 1))
	fi

	# checks which month user is born using case selection and increments the corresponding month so that we can know how many born in same month

	case "$birthMonth" in
		1) January=$(($January + 1))
		   birthDict[January]=$January
		   ;;
		2) February=$(($February + 1))
		   birthDict[February]=$February
		   ;;
		3) March=$(($March + 1))
		   birthDict[March]=$March
		   ;;
		4) April=$(($April + 1))
                   birthDict[April]=$April
                   ;;
                5) May=$(($May + 1))
                   birthDict[May]=$May
                   ;;
                6) June=$(($June + 1))
                   birthDict[June]=$June
                   ;;
		7) July=$(($July + 1))
                   birthDict[July]=$July
                   ;;
                8) August=$(($August + 1))
                   birthDict[August]=$August
                   ;;
                9) September=$(($September + 1))
                   birthDict[September]=$September
                   ;;
		10) October=$(($October + 1))
                   birthDict[October]=$October
                   ;;
                11) November=$(($November + 1))
                   birthDict[November]=$November
                   ;;
                12) December=$(($December + 1))
                   birthDict[December]=$December
                   ;;
		*) echo "Not a valid month"
		   ;;

	esac

	((counter++))
done

echo "Month wise born list"

for key in "${!birthDict[@]}"
do	
	printf "%-15s""%-15s""\n" $key ${birthDict[$key]}	
done

echo "Total Born In The Year Ninty Two is " $totalBornInYearNintyTwo
echo "Total Born In The Year Ninty Three is " $totalBornInYearNintyThree
