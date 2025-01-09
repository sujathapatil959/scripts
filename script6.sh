#!/bin/bash

echo " enter the 1sr number"
read a 
echo " enter the 2nd number"
read b
if (( $a > $b ))
then
 echo "$a is larger number"
fi
