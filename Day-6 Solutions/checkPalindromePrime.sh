#! /bin/bash

function checkPrime() {
	number=$1
	isPrime=1
	for ((i=2; i<=$number/2; i+=1))
	do
        	if [ $((number % i)) -eq 0 ]
        	then
                	isPrime=0
        	fi
	done
	echo $isPrime
}

function reverseNum() {
	rem=0
        revese=""
        num=$1
        while [ $num -gt 0 ]
        do
                rem=$(( $num % 10 ))
                num=$(( $num / 10 ))
                reverse=$( echo ${reverse}${rem} )
        done
	echo "$reverse"
}

read -p "Enter the number " num
primeOrNot=$(checkPrime $((num)))
if [ $primeOrNot -eq 1 ]
then
	revOfNum=$(reverseNum $((num)))
	echo "Palindrome of Given Number is $revOfNum"
	palindromePrime=$(checkPrime $((revOfNum)))	
else
	echo "Number is not a prime"
fi
if [ $palindromePrime -eq 1 ]
then
	echo "Palindrome of given number is prime"
else
	echo "Palindrome of given number is not a prime"
fi
