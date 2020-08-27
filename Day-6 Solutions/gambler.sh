#! /bin/bash
currentAmount=100
betPrice=1
goal=200
won=0
loss=1
totalWins=0
totalBets=0
totalLoss=0
while [ $currentAmount -lt $goal ] && [ $currentAmount != 0 ]
do
	winOrLoss=$((RANDOM % 2))
	if [ $winOrLoss -eq 0 ]
	then
		((totalWins = $((totalWins + 1))))
		((currentAmount = $((currentAmount + 2))))
	else
		((totalLoss = $((totalLoss + 1))))
		((currentAmount = $((currentAmount - 1))))
	fi
	((totalBets = $((totalBets + 1))))
done
echo "No Of Bets Made = " $totalBets
echo "No Of Times Won = " $totalWins
echo "No Of Times Loss = " $totalLoss
