#!/bin/bash
echo " enter the filename to display"
read file
count = $(cat $file | wc -l)
while (( $count > 0 ))
do
  head - $count $file | tail -1
  count = ` expr $count - 1 `
done  
