#!/bin/bash
echo "enter a number to guess"
read a 
num = 5
 if [ $a == $num ]
then
echo "your guess is correct! you win a jackpot!!"
else 
echo "your guess is incorrect! you loose!!!"
fi

