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
---
