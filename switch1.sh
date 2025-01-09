#!/bin/bash
create_files() {
	echo "creating 2 files"
	touch file1.txt file2.txt
	echo "Files file1.txt and file2.txt created."
}

change_permission() {
	echo "enter the filename to change permissions:"
	read filename
	if [-f "$filename" ]; then
		echo " enter the permission to set :"
		read permissions
		chmod "$permissions" "$filename"
		echo "permissions for $filename changed to $permissions."
	else
		echo " File $filename not found!"
	fi
}

search_pattern() {
	echo "enter the pattern to search in:"
	read filename
	if [ -f "$filename" ]; then
		echo "enter the pattern to search for:"
		read pattern
		grep "$pattern" "$filename"
	else
		echo "File $filename not found!"
	fi

}
list_files() {
	echo "listing files recursively in the current directory"
	find . -type f
}

while true ; do
	echo "please choose an option:"
	echo "1) create 2 files"
	echo "2) change the permissions"
	echo "3) search for a pattern ina file"
	echo "4) list files recursively in the current directory"
	echo "5) exit"
	read "enter your choice(1-5): " choice

	case $choice in
		1) 
			create_files
			;;
		2)
			change_permissions
			;;
		3)
			search_pattern
			;;
		4)
			list_files
			;;
		5)
			echo"exiting"
			break
			;;
		*)
			echo "invalid choice.please try again."
			;;
	esac
done

		  

