#! /bin/bash -x
a=$((RANDOM))
b=$((RANDOM))
c=$((RANDOM))
result1=$(((a + b) * c))
result2=$(((a % b) + c))
result3=$((c + (a / b)))
result4=$((( a * b) + c))
if [ $result1 -gt $result2 ] && [ $result1 -gt $result3 ] && [ $result1 -gt $result4 ]
then
	echo "result1 is maximum"
elif [ $result2 -gt $result3 ] && [ $result2 -gt $result4 ]
then
	echo "result2 is maximum"
elif [ $result3 -gt $result4 ]
then 
	echo "result3 is maximum"
else 
	echo "result4 is maximum"
fi

if [ $result1 -lt $result2 ] && [ $result1 -lt $result3 ] && [ $result1 -lt $result4 ]
then
        echo "result1 is minimum"
elif [ $result2 -lt $result3 ] && [ $result2 -gt $result4 ]
then
        echo "result2 is minimum"
elif [ $result3 -lt $result4 ]
then
        echo "result3 is minimum"
else
        echo "result4 is minimum"
fi
