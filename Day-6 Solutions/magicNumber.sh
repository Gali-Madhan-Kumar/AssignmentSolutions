#! /bin/bash -x
read -p "Enter the number between 1 - 100 " number
result=""
num=$number
while [ $num -gt $((number / 2)) ]
do	
		result+="$num "
		((num-=5))
done
echo $result
