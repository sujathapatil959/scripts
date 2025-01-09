#!/bin/bash
read file2
while read line
do 
	name=$(echo "$line" | awk -F " " '{print$1}')
	phone=$(echo "$line" | awk -F " " '{print$2}')
	state=$(echo "$line" | awk -F " " '{print$3}')
	emailid=$(echo "$line" | awk -F " " '{print$4}')
   echo -e "Subject: details from the file\n\n Hi$name\n\nPlease come to the shop opening I know you are from $place\nyour contact number is $phone\nand your email id is $emailid" | sendmail -v $emailid 
   

done < $file2
