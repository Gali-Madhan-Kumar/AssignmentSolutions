#! /bin/bash -x
read -p "Enter the value of n " num
hSeries="1/1"
for((i=2; i<=$num; i+=1))
do
	hSeries+=" + 1/$i "
done
echo "Hn = $hSeries"
		
