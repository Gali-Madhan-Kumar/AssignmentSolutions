#! /bin/bash -x
getRandomDice1=$((RANDOM))
getRandomDice2=$((RANDOM))
echo $((getRandomDice1 + getRandomDice2))
