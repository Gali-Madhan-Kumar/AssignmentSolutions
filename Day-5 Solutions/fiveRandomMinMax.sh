#! /bin/bash -x
random1=$((RANDOM % 900 + 100))
random2=$((RANDOM % 900 + 100))
random3=$((RANDOM % 900 + 100))
random4=$((RANDOM % 900 + 100))
random5=$((RANDOM % 900 + 100))
if [ $random1 -gt $random2 ] && [ $random1 -gt $random3 ] && [ $random1 -gt $random4 ] && [ $random1 -gt $random5 ]
then 
	max=$random1
elif [ $random2 -gt $random3 ] && [ $random2 -gt $random4 ] && [ $random2 -gt $random5 ]
then	
	max=$random2
elif [ $random3 -gt $random4 ] && [ $random3 -gt $random4 ]
then
	max=$random3
elif [ $random4 -gt $random5 ]
then	
	max=$random4
else
	max=$random5
fi
echo "$max Is The Maximum Value"

if [ $random1 -lt $random2 ] && [ $random1 -lt $random3 ] && [ $random1 -lt $random4 ] && [ $random1 -lt $random5 ]
then
        min=$random1
elif [ $random2 -lt $random3 ] && [ $random2 -lt $random4 ] && [ $random2 -lt $random5 ]
then
        min=$random2
elif [ $random3 -lt $random4 ] && [ $random3 -lt $random4 ]
then
        min=$random3
elif [ $random4 -lt $random5 ]
then
        min=$random4
else
        min=$random5
fi
echo "$min Is The Minimum Value"

