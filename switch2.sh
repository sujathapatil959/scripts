#!/bin/bash
echo " press 1 to create 2 files"
echo " press 2 to change the permissions of a file"
echo " press 3 to search a pattern ina file "
echo " press 4 to find / list the files in current directory recursively"

echo " press the numbers from 1 to 4"
read choice
case $choice in 
	1)
		echo "creating 2 files file1 and file2";
		read file1;
		read file2;
		touch $file1 $file2
		echo "2 files $file1 and $file2 created";
		;;
	2)
		echo "enter the name of the file to change the permissions";
		read name;
		echo "enter the permission in xxx format";
		read perm
		sudo chmod $perm $name
		echo "permission changes";
		;;
	3)
		echo "enter the pattern to search in a file ";
		read pattern;
		echo "enter the filename to be searched in";
		read filename;
		grep -i "$pattern " $filename
		;;
	4)
		echo "enter the path to list of files and folders from the path";
		read path;
		path='pwd'
		ls -l
		;;
esac
	   
