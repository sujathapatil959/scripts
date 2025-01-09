#!/bin/bash
file=file9
while read line
do
        name=$(echo "$line" | awk '{print $1}')
        place=$(echo "$line" | awk '{print $2}')
        phone=$(echo "$line" | awk '{print $3}')
        emailid=$(echo "$line" | awk '{print $4}')

     echo -e "Subject: details from the file\n\n Hi$name\n\nPlease come to the shop opening I know you are from $place\nyour contact number is $phone\nand your email id is $emailid" | sendmail -v prajwaldv21@gmail.com

done < $file
