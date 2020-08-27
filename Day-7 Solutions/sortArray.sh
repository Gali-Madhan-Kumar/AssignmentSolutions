#! /bin/bash 

for ((counter=0; counter<10; counter+=1))
do
	randomNumber=$((RANDOM))
	randomNumbersArray[(($counter))]=$randomNumber
done

for((i=0; i<${#randomNumbersArray[@]}; i+=1))
do
	for((j=i+1; j<${#randomNumbersArray[@]}; j+=1))
        do
        	if [ ${randomNumbersArray[$i]} -gt ${randomNumbersArray[$j]} ]
                then
                	temp=${randomNumbersArray[$i]}
                        randomNumbersArray[$i]=${randomNumbersArray[$j]}
                        randomNumbersArray[$j]=$temp
                fi
        done
done

echo "Sorted Array is " ${randomNumbersArray[@]}
echo "Second Maximum number in array is " ${randomNumbersArray[${#randomNumbersArray[@]} - 2]}
echo "Second Minimum number in array is " ${randomNumbersArray[1]}

