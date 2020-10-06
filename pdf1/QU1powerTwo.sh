#!/bin/bash -x

echo "Input Number";
read num
echo "Input Power";
read power

ans=1;

	for((i = 1 ; i <= $power ; i++))
	do
	ans=$(( $ans * $num ))
	done
echo "$num to the power of $power is $ans"
