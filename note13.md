# for loop in shell scripting, c style for loop

There are three types of loops in shell scripting:

1. for loop.
2. while loop.
3. until loop.

## for loop

**Variations of the for loop:**

```bash
for variable in list
do
	stmt1
	stmt2
	.....
done
```
`variable` is any user defined variable and `list` is space separated values.

Example-1:
```bash
for i in 1 2 3 4 5
do
	echo "user_${i}"
	echo "hi"
done
```
Here, first `i` will take the value `1`, and in the next iteration `i` will be `2`, and so on.

Example-2:
```bash
for str in "one" "two" "three"
do
	echo "${i}"
done
```
In first iteration, `str` will be `"one"`, in the second iteration `str` will be `"two"` and in the final iteration `str` will be `"three"`.

Example-3:
```bash
for i in "hello" 1 "again" 2
do
	echo "${i}"
done
```
In first iteration, `i` will be `"hello"`, in the second iteration `i` will be `1`, in the third iteration `i` will be `"again"` and in the final iteration `i` will be `2`.

```bash
for i in {1..10}
do
	echo "${i}"
done
```
`{1..10}` is equivalent to writing `1 2 3 4 5 6 7 8 9 10` which is again a list.


```bash
for i in user{1..10..2}
do
	echo "${i}"
done
```
`{1..10..2}` is equivalent to writing `1 3 5 7 9`.

`user{1..10..2}` expands to `user1 user3 user5 user7 user9`.


```bash
for i in $(seq 1 10)
do
	echo "${i}"
done
```
`seq 1 10` basically prints a sequence of numbers from 1 to 10.

<img src="https://user-images.githubusercontent.com/96164229/224468668-66fa698d-930c-4261-9b0b-4269497c79e9.png" width="60%" height="60%">

But in we have used `$(seq 1 10)` in the example above. There's a reason for that which will be clarified by the output of [sample](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/sample) shown below:

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/224468827-ae905ea8-9a84-494a-8224-eb8c5c054252.png" width="60%" height="60%">

So, providing the dollar(\$) before `seq` makes it print each number of the sequence in the same line rather printing each number in a newline.

So `$(seq 1 10)` is equivalent to writing `1 2 3 4 5 6 7 8 9 10`.

## C style for loop

```bash
for ((variable_initialization; condition; increment/decrement))
do
	stat1
	stat2
	....
done
```

Exmaple:

```bash
for (( i=1; i<=10; i++ ))
do
	echo "${i}"
done
```
The initialization part of the variable in the for loop is optional.

Following is an infinite loop:

```bash
for (( ; ; ))
do
	echo "hi"
done
```

## Nested for loops

```bash
for i in file{1..3}
do
	for x in web{0..3}
	do
		echo "file is ${i}"
		echo "x is ${x}"
	done
done
```


<p align="center">
&#9678;&#9678;&#9678;
</p>
