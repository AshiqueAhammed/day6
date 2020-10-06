#!/bin/bash -x

Stake=100;
Goal=200;
Trails=10
randomCheck=$(bc <<< "scale=2; $(printf '0.%02d' $(( $RANDOM % 10))) / 2")
bets=0;
wins=0;

for(( t=0 ; t -lt $Trials ; t++ ))
do
cash=$Stake;
while [ "$cash" -gt 0 ] && [ "$cash" -lt "$Goal" ]
do
((bets++))
if [ $randomCheck -lt 0.5 ]
then
((cash++))
else
((cash--))
fi
if [ $cash -eq $Goal ]
then
((win++))
fi
done
done
echo "Wins" $wins
echo "Trails" $Trails

