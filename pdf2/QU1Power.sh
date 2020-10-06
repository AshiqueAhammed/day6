#!/bin/bash -x

echo "Enter number"
read num
echo "Enter power"
read power

count=0;
ans=1;

while [ $power -ne $count ]
do
	ans=`expr $ans \* $num`
	count=`expr $count + 1`
	if [ $ans -eq 256 ]
		then
		break
	fi
done

echo "$num to the power of $count is $ans"
