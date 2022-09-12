
echo "enter length of the fibonacci series: "
read size

first=0
second=1

echo $first 
echo $second

i=0

while [ $i -ne $size ]
do
	third=$(expr $first + $second)
	echo $third
	first=$second
	second=$third

	((i++))
done
