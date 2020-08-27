#! /bin/bash -x
digitNumber=$((RANDOM % 10))
if [ $digitNumber -eq 0 ]
then
	echo "Zero"
elif [ $digitNumber -eq 1 ]
then
	echo "One"
elif [ $digitNumber -eq 2 ]
then
        echo "Two"
elif [ $digitNumber -eq 3 ]
then
        echo "Three"
elif [ $digitNumber -eq 4 ]
then
        echo "Four"
elif [ $digitNumber -eq 5 ]
then
        echo "Five"
elif [ $digitNumber -eq 6 ]
then
        echo "Six"
elif [ $digitNumber -eq 7 ]
then
        echo "Seven"
elif [ $digitNumber -eq 8 ]
then
        echo "Eight"
else
        echo "Nine"
fi
