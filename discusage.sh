#!/bin/bash
size=$(df -h . | awk 'NR==2 {print $(NF-1)}' | sed 's/%//g')
if [ $size -gt 30 ]
then
	echo "Subject: current usage is more than 70% please check and do the needful" | sendmail -v sujatapatil1132@gmail.com
fi
