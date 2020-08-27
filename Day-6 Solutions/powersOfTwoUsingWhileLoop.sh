#! /bin/bash
read -p "Enter the value of n " n
powersOfTwo="2"
ans=0
i=2
while [ $ans -le 256 ]  && [ $i -le $n ]
do
	((ans += $((powersOfTwo * 2))))
	powersOfTwo+=", $((powersOfTwo * 2))"
	((i++))
done		
echo $powersOfTwo	
