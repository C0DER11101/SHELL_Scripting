# shell script to detect extension of a file!!


if [ ${1##*.} == "txt" ]
then
	echo "Text file!!"

else
	echo "Not sure!!"
fi
