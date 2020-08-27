#! /bin/bash -x
read -p "Enter the value of n " n
result="2"
if [ $n -eq 0 ]
then
	echo "1"
else
	for ((i=2; i<=$n; i+=1))
	do
		result+=", $((result * 2)) "
	done
fi
echo $result
