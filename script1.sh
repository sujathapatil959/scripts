#!/bin/bash
echo "enter the first number "
read a
echo "enter the second number "
read b

c==`expr $a + $b `
d==` expr $a / $b`
e==` expr $a \* $b`

echo -e " sum of two nubers $c\n multiplication of 2 no is $e\n quotient of 2 no is $d"

echo "$0"
echo "$@"
