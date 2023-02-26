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


---
