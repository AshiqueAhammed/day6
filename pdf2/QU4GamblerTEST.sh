#!/bin/bash

money=100;
bet=0;
win=0;
while [ $money -gt 0 ] && [ $money -lt 200 ]
do
	bet=$(($bet+1))
	x=$(( RANDOM%2 ))
	if [ $x == 1 ];
	then money=$(($money+1))
		win=$(($win+1))
	else
		money=$(($money-1))
	fi
done
echo "Money present" $money
echo "Number of bets" $bet
echo "Number of wins" $win
