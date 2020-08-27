#! /bin/bash

for((counter=0; counter<3; counter+=1))
do
	read -p "Enter the number " num
	numbersArray[(($counter))]=$num
done

echo ${numbersArray[@]}

if [ $((${numbersArray[0]}+${numbersArray[1]}+${numbersArray[2]})) -eq 0 ]
then
	echo "Sum is 0"
else
	echo "Sum is not 0"
fi
