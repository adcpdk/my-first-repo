#!/usr/bin/env 
# Author: Dmitriy Kupch

#setting default value
cur_dir=$(ls $PWD | wc -l | egrep -o "[0-9]+" )
response=0
#echo $cur_dir
function response_func {
	echo "How many files are in the current directory? "
	read response
}

while [ $response -ne $cur_dir ]
do
	response_func
	if [ $response -lt $cur_dir ]
	then
		echo "too low, please try higher"
	elif [ $response -gt $cur_dir ]
	then
		echo "too high, please try lower"
	
	fi
done
echo "Congratulations, you guessed the right number!"
