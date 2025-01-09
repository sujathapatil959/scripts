#!/bin/bash

#var=$(date(+%A))
var=$1
case $var in
	monday) 
		touch monday.1 monday.2
	        ;;
        tuesday)
		touch tuesday.1; rm -rf monday.1
		;;
	wednesday)
		mv monday.1 wednesday.1
		;;
	saturday | sunday)
	        echo "sat ad sun is holiday"
	        ;;
esac	
