#! /bin/bash

counter=0

for((i=1; i<100; i+=1))
do
	if [ $((i % 11)) -eq 0 ]
	then
		array[((counter++))]=$i
	fi
done

echo ${array[@]}	
