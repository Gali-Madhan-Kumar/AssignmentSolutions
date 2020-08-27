#! /bin/bash -x
heads=0
headsOrTailsCheck=$((RANDOM % 2))
if [ $headsOrTailsCheck -eq $heads ]
then 
	echo "Heads"
else
	echo "Tails"
fi
