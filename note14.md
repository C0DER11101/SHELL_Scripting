# while loop
_General structure:_

```bash
while <condition>
do
	statement1
	statement2
	....
done
```

_Examples:_

### Example-1
```bash
((a=0))

while ((a<10))
do
	echo "Number is: ${a}"
	((a++))
done
```
[example1](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/example1)

**Image:**

<img src="https://user-images.githubusercontent.com/96164229/236458031-99ab09d3-babc-4535-8bd4-ca52640fc5ec.png" width="60%" height="60%">

### Example-2
```bash
((a=1))
while [ ${a} -lt 10 ]
do
	echo "Number is: ${a}"
	((a++))
done
```
[example2](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/example2)

**Image:**

<img src="https://user-images.githubusercontent.com/96164229/236463292-73d3b60b-e037-413f-8cc3-9229253b06d2.png" width="60%" height="60%">

## Infinite loop using while loop

### Variation-1

```bash
while :
do
	echo "In infinite loop"
done
```

### Variation-2
```bash
while true
do
	echo "In infinite loop"
done
```

[Variation 1 of infinite while loop](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/infwhileV1).

[Variation 2 of Infinite while loop](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/infwhileV2).


# until loop
>Here the condition must be false to execute the body.

_General syntax_

```bash
until <condition>
do 
	statement1
	statement2
	statement3
	...
done
```

_Examples:_

### Example-1
```bash
((a=1))
until ((a==5))
do
	echo "${a}"
	((a++))
done
```
[example1Until](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/example1Until).

**Image:**

<img src="https://user-images.githubusercontent.com/96164229/236466728-3f8e92df-5a34-451a-a7d2-5d1a88086c7c.png" width="60%" height="60%">


### Example-2
```bash
((a=1))
until [ ${a} -eq 5 ]
do
	echo ${a}
	((a++))
done
```
[example2Until](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/example2Until).

**Image:**

<img src="https://user-images.githubusercontent.com/96164229/236468025-103ab1e4-aa3f-45b9-a5e9-9623f3c0f76a.png" width="60%" height="60%">

## Infinite until loop
```bash
until false
do
	echo "In infinite loop"
done
```
[infUntil](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/infUntil).

Now the `<condition>` that we wrote in the syntax of `while` and `until` is actually a **command**.

When the command(condition) is executed, it returns an exit status code(0 -> for successful execution or non-zero value -> for unsuccessful execution). This exit status code tells the while loop or the until loop whether the command is executed successfully or not so that the loops can continue or stop executing.

# A very useful note
If you want to display any string in lower case(be it a string with uppercase characters, or a string with a combination of uppercase and lowercase characters or all lowercase characters), then the `tr` command can be used.

Example:

```bash
echo "Yes" | tr [A-Z] [a-z]
```

`tr [A-Z] [a-z]` means: convert any uppercase character between A to Z to its lowercase form.

**Image:**

<img src="https://user-images.githubusercontent.com/96164229/236472987-bd6f8bf9-a1e2-4343-9698-2857f8348e67.png" width="60%" height="60%">

The above implementation can be seen in these two scripts:

[userDesires](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/userDesires), [userDesires2](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/userDesires2).

<p align="center">
&#9678; &#9678; &#9678;
</p>
