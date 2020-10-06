#!/bin/bash 

function myPalin() {

echo "The number is $1"


ori1=$1
b1=$1
rev1=0;

while [ $b1 -gt 0 ]
do
a1=$(( $b1 % 10 ));
b1=$(( $b1 / 10 ));
rev1=$(( $rev1 * 10 + $a1 ))
done

echo "Reverse of no is $rev1"
echo "$rev2"
if [ $ori1 -eq $rev1 ]
then
echo "$ori1 is palindrome"

else
echo "$ori1 is not palindrome"
fi

echo "Number is $2 "

ori2=$2
b2=$2
rev2=0;
while [ $b2 -gt 0 ]
do
a2=$(( $b2 % 10 ));
b2=$(( $b2 / 10 ));
rev2=$(( $rev2 * 10 + $a2 ))
done
echo "reverse of the number is $rev2"

if [ $ori2 -eq $rev2 ]
then
echo "$ori2 is palindrome"
else
echo "$ori2 is not palindrome"
fi

}
myPalin 121 544
