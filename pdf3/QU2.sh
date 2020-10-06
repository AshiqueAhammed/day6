#!/bin/bash

function myPalin() {
ori=$1;
b1=$1;
reverse=0;

while [ $b1 -gt 0 ]
do
	a1=$(( $b1 % 10 ));
	b1=$(( $b1 / 10 ));
	reverse=$(( $reverse * 10 + $a1 ))
done

if [ $ori -eq $reverse ]
then
	echo "$ori is a Palindrome"
else
	echo "$ori is a Not Palindrome"
fi
}

value1=$( myPalin "444" );
value2=$( myPalin "132" );
echo "$value1"
echo "$value2"
