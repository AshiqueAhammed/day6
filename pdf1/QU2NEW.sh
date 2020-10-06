#!/bin/bash

echo "Enter a number"
read n

i=1
sum=0

for (( i=1 ; i<=n ; i++ ))
do
	sum=`expr $sum + \( 10000 / $i \)`
done
	echo Sum n series is

for (( i=1 ; i<=5 ; i++ ))
do
	a=`echo $sum | cut -c $i`
	echo -e "$a\c"
if [ $i -eq 1 ]
then
	echo -e ".\c"
fi
done
