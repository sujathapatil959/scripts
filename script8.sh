#!/bin/bash
echo "enter the first number"
read a
echo "enter the second number"
read b 
echo "enter the third number"
read c

if (($a > $b )) && (( $a  >$b ))
then
  echo " $a is biggest number"
elif (( $b > $a )) && (( $b > $c ))
then
  echo "$b is biggest number"
else
  echo "$c is biggest number"
fi

