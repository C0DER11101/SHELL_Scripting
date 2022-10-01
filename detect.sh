# shell script to detect extension of a file!!


if [ ${1##*.} == "txt" ]
then
	echo "Text file"

elif [ ${1##*.} == "sh" ]
then
	echo "Bash Script"

elif [ ${1##*.} == "cpp" ]
then
	echo "C++ source file"

elif [ ${1##*.} == "c" ]
then
	echo "C source file"

else
	echo "Not sure!!"
fi
