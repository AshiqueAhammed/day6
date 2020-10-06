function myPrime() {

echo -n "Enter the number:"
read num
i=2
while [ $i -lt $num ]
do
if [ `expr $num % $i` -eq 0 ]
then
echo "$num is not a prime number"
exit
fi
i=`expr $i + 1`
done
echo "$num is a prime number"

}
myPrime

function myPalin() {

echo "The number is $num"

ori1=$num
b1=$num
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

}
myPalin

