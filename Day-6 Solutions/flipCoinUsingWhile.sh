#! /bin/bash
isHeads=0
isTails=1
totalHeads=0
totalTails=0
while [ $totalHeads -lt 11 ] && [ $totalTails -lt 11 ]
do
	flipCoin=$((RANDOM%2))
	if [ $flipCoin -eq $isHeads ]
	then
		((totalHeads = $((totalHeads + 1))))
	else
		((totalTails = $((totalTails + 1))))
	fi
done
echo "Total Heads = " $totalHeads
echo "Total Tails = " $totalTails
if [ $totalHeads -eq 11 ]
then
	echo "Head wins"
else
	echo "Tail wins"
fi

