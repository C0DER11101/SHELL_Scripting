#Shell script to detect an empty file!!

if [ -s $1 ]   # -s checks if the file has some data
then
	echo "File is not emtpy!"

else
	echo "File is empty"
fi
