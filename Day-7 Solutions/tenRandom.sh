#! /bin/bash

function findSecondMaxInArray() {

	randomNumbersArray=$1
	firstMax=-999999
	secondMax=-999999
	arrayLength=${#randomNumbersArray[@]}

	for((i=0; i<$arrayLength; i+=1))
	do
		if [ ${randomNumbersArray[$i]} -gt $firstMax ]
		then
			secondMax=$firstMax
			firstMax=${randomNumbersArray[$i]}
		elif [[ ${randomNumbersArray[$i]} -lt $firstMax && ${randomNumbersArray[$i]} -gt $secondMax ]]
		then
			secondMax=${radomNumbersArray[$i]}
		fi
	done
	
	echo $secondMax
}

function findSecondMinInArray(){

	randomNumbersArray=$1
        firstMin=${randomNumbersArray[0]}
        secondMin=${randomNumbersArray[1]}
        arrayLength=${#randomNumbersArray[@]}
        temp=0

        if [ $firstMin -gt $secondMin ]
        then
                temp=$firstMin
                firstMin=$secondMin
                secondMin=$temp
        fi

        for((i=2; i<$arrayLength; i+=1))
        do
                if [ ${randomNumbersArray[$i]} -lt $firstMin ]
                then
                        secondMin=$firstMin
                        firstMin=${randomNumbersArray[$i]}
                else
                        if [[ ${randomNumbersArray[$i]} -lt $secondMin && ${randomNumbersArray[$i]} -ne $firstMin ]]
                        then
                                secondMin=${radomNumbersArray[$i]}
                        fi
                fi
        done

        echo $secondMin
}


for ((counter=0; counter<10; counter+=1))
do
	randomNumber=$((RANDOM))
	randomNumbersArray[(($counter))]=$randomNumber
done
secondMaxInArray="$(findSecondMaxInArray ${randomNumbersArray[@]})"
secondMinInArray="$(findSecondMinInArray ${randomNumbersArray[@]})"
echo ${randomNumbersArray[@]}
echo "Second Maximum Number in the array is " $secondMaxInArray
echo "Second Minimum Number in the array is " $secondMinInArray				
