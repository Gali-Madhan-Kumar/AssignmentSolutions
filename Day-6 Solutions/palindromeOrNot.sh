#! /bin/bash
function checkPalindrome() {
	rem=0
	revese=""
	num=$1
	while [ $num -gt 0 ]
	do
		rem=$(( $num % 10 ))
		num=$(( $num / 10 ))
		reverse=$( echo ${reverse}${rem} )
	done
if [ $1 -eq $reverse ]
then	
	echo "Number is Palindrome"
else
	echo "Number is not a Palindrome"
fi
}
read -p "Enter the number " number
result=$(checkPalindrome $((number)))
echo $result
