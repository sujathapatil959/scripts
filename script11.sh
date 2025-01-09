#!/bin/bash
echo "enter the file name "
read path
result=0
while read line
do
  count =$(echo -n "$line" | wc -c)
  result=$((result + 1))
  echo "the number of charecters present in the current line is $count"
done < $path

