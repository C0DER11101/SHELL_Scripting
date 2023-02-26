# Double parentheses in shell scripting `(())` vs `$(())`. Mathematical calculations with `bc` and `(())`
>Double parentheses are used to perform integer arithmetical operations(+, -, /, *, etc).

&#9658; double parentheses cannot be used to perform aritmetical operations on floating numbers.

&#10027; to perform arithmetic operations on floating numbers we have to use the bc calculator.


**But why are double parentheses required?**

The program below and its output gives the answer:

[t11](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/t11)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/221393980-c04f38c0-2ca3-4a1d-aac5-3c3c8178e3af.png" width="60%" height="60%">

**The problem is that the shell is incompatible to perform the arithmetical operations, so it treats the mathematical operators as a character.**

That's the reason why we use the double parentheses to perform arithmetical operations.

[t11_b](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/t11_b) uses `$(())`.

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/221394151-95e5403e-5ea0-4d2e-9e8f-ec766e756a3f.png" width="60%" height="60%">


[t11_c](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/t11_c).

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/221394269-d5bbd4cc-c82f-4fee-b80c-3d49256dfcff.png" width="60%" height="60%">


The shell also supports C type operators(operators used in C programming) in the double parentheses.


**Finding power of a number** 
>To find the power of a number we use `**` in shell scripting.

[t12](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/t12).

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/221394418-f2d3b569-0fdb-4a87-9db9-cf6e123c1bda.png" width="60%" height="60%">


**We can also initialize variables with the result of an arithmetical operation inside the double parentheses**

```bash
((a=34+1))

echo $a
```

`echo $a` is going to display `35` (not `34+1` literally) i.e. the result of the `+` arithmetical operation.

[t13](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/t13).

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/221394558-b03b896c-3db8-47e3-8744-1e406f31c38a.png" width="60%" height="60%">


**Using post increment operator inside double parentheses**

```bash
((a=20))
((a++))

echo $a
```
`echo $a` will display `21`.

[t14](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/t14).

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/221394650-b647a0b4-dc2c-476d-9b5b-050d8a002146.png" width="60%" height="60%">


**IMPORTANT**

*If you are using variables inside double parentheses then it's a good practice to not use `$` before the variable.*

Example:

```bash
((a+4)) # recommended
(( $a + 4 )) # not recommended
```

[t15](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/t15).

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/221395135-0122ef16-c4ed-4513-9866-15fbf507d705.png" width="60%" height="60%">


**Double parentheses fail when we perform arithmetic operations on floating point numbers!!**

[t16](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/t16).

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/221395502-1a89d04a-457c-4025-a494-641b33a99a1a.png" width="60%" height="60%">

Here, it doesnot recognise `.` in the expression `1.2+2.8`.


[t16_b](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/t16_b).

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/221395539-993e46e4-32e7-4cb7-8737-ab284d9c5cf8.png" width="60%" height="60%">

Here, $15/2$ should have produced $7.5$ but since `(())` are used mainly for integer arithmetic, so it discards the decimal part and only shows `7`.


## The `bc` calculator

[t17](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/t17).

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/221395916-9b8e64c3-4668-4730-b744-de5c0195094c.png" width="60%" height="60%">

`scale=2;` basically means the number of digits to display after the decimal point. Here 2 digits will be displayed after the decimal point because `scale` is set to `2`.

`echo "scale=2; 15/2" | bc`, we saw this format of command yesterday [here](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/note11.md), it basically sends the output of `echo "scale=2; 15/2"` to the `bc` calculator.

[t18](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/t18).

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/221396334-071ebb02-52a6-4e87-9be5-f4b2d3a089fd.png" width="60%" height="60%">

The `bc` calculator can also be used for arithmetical operations on integers. Check out [bcCalculator.md](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/bcCalculator.md) for more information.

## Difference between \$(()) and (())

(()) only evaluates the expression that is written inside of it. **It doesnot return any standard output**.

\$(()) on the other hand **returns standard output**.

Consider the file below:

`paren1`

```bash
((1+2))
```

When we will run this script then nothing will be produced because even though `1+2` was evaluated to `3` but it wasn't returned so we get no output.


But in this file:

`paren2`

```bash
$((1+2))
```

When we will run this script then we will get an output saying `3: command not found`.


[paren1](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/paren1).

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/221406331-886421f7-b15e-4a19-995c-8b15da8e5a99.png" width="60%" height="60%">


[paren2](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/paren2).

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/221406797-076db0e0-2371-4e8a-a82e-86e67fe5a23f.png" width="60%" height="60%">

In this output of `paren2` we can see `$((1+2))` actually returned `3` and that's why we got the error `3: command not found`


**Where to use (()) and \$(())?**

>When we want to assign the value of some expression to a variable outside (()) then we must use \$ before (()) i.e. \$(()).

Example:
```bash
a=$((1+2))
```
`a` stores `3`.

>If we are assigning the value of an expression to a variable inside (()) then we neednot use \$ before (()).

Example:
```bash
((a=1+2))
```
Here also `a` stores `3`.


## Exit status code of (())

* if evaluation of an expression inside (()) produces a non-zero result then the exit status code of (()) is 0.
* if evaluation of an expression inside (()) produces a zero then the exit status code of (()) is 1.


[t19](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/t19).

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/221407290-b1d01379-6106-4c61-80b3-f72ba0b9cbd6.png" width="60%" height="60%">

[t19_b](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/t19_b)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/221407439-5fb25a15-943c-4415-b207-5b380e28670c.png" width="60%" height="60%">

The images above clarify about the exit status code of (()).


## Using (()) in conditionals

We can also use (()) with conditionals as shown in the file below:

[t20](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/t20).

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/221407750-6b497a97-43ca-4601-a44e-8444226c7275.png" width="60%" height="60%">

We can also use variables inside (()) for conditionals as shown in the file below:

[t21](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/t21).

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/221407929-6d4f7d3c-572d-44bf-9371-00997d976de1.png" width="60%" height="60%">


---
