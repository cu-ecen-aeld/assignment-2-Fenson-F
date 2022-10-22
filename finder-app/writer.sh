#!/bin/sh
#By FFenlon Last Updated Oct 21

if [ $# -eq 0 ]
then
	echo "Error: Filename with path and file text not given."
	exit 1
elif [ $# -eq 1 ]
then
	echo "Error: Filename with path OR file text not given."
	exit 1
else
	writefile=$1
	writestr=$2
	filedir=$(dirname $writefile)
	filename=$(basename $writefile)
	if [ ! -d "$filedir" ] 
	then
		mkdir $filedir
		echo File directory created at "$filedir"
	fi	
	echo $writestr >| $writefile
	echo File "$writefile" created
	exit 0
fi

echo "Error: could not create file"
exit 1 
