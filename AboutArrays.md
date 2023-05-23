# Array variables in Shell scripting
>Arrays are variables that can store multiple values at a time.

**Arrays are of two types:**
1. Indexed array.
2. Associative array.

## Indexed array
>Variables are stored against the numeric indices.

_Syntax of declaring indexed array:_

```bash
declare -a userNames
```
`declare` is not mandatory for indexed array. `-a` means that we are dealing with indexed array. `userNames` is the name of the indexed array.

Here's how we assign values to array `userNames`:
```bash
userNames=("user1" "user2" 4 5 "user3" "user4")
```
We can also declare and initialize the array at the same time.
```bash
declare -a userNames=("user1" "user2" 4 5 "user3" "user4")
```
_Notice:_ **values are space separated in the array.**

### Accessing
**Using normal indexing**

_Syntax_
```bash
echo ${userNames[0]}
```
It's similar to accessing the value of a normal variable with only one difference: _we need to provide the index number within square brackets(just like in C arrays)._

<details>
<summary>Scripts</summary>

[array1](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/array1)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/240094011-8dfc1292-a23d-40b0-b2e9-4a7dde08bd75.png" width="60%" height="60%">
</details>

**Using negative indexing**
>Negative begins from the last element starting with index value as -1.
```bash
echo ${userNames[-1]}
```
will access the last element in the array `userNames`.

<details>
<summary>Scripts</summary>

[array1_2](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/array1_2)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/240094845-ccc3ea4b-7739-4dae-a562-76fb89b0a8d8.png" width="60%" height="60%">

</details>

**Using output of a command used as element of an array**
>We can use the outputs of commands as elements of an array.

**If we want to change the value of an array at any index then we can simply change it like this:**
```bash
userNames[0]="hello"
```

<details>
<summary>Scripts</summary>

[array1_3](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/array1_3)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/240097307-4387aeb4-01b5-4ea2-88a8-b6214a9d2028.png" width="60%" height="60%">
</details>

## Associative array
>In this type of array, the values are stored against user defined keys, like key-value pair.

_Syntax of declaring associative array_
```bash
declare -A arr
```
`-A` means we are dealing with associative arrays.

Here's how we initialize an associative array:
```bash
arr=([user1]="hello" [user2]="shell" [user3]="scripters" [num]=1000)
```
Here the keys are `user1`, `user2`, `user3` and `num` and the values are `"hello"`, `"shell"`, `"scripters"` and `1000`.

We can also declare and initialize the array at the same time.
```bash
declare -A arr=([user1]="hello" [user2]="shell" [user3]="scripters" [num]=1000)
```

### Accessing
>To access an element, we use key to access its corresponding value.

**If we want to modify any value in the array, then we can do the following:**
```bash
arr[user1]="world"
```

<details>
<summary>Scripts</summary>

[array2](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/array2)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/240211730-ee06c1c0-a63d-40b6-919c-1544e4d1192f.png" width="60%" height="60%">
</details>


## Looping through all the values present inside the array
**For this we have options:**

1. Using `@`.
2. Using `*`.

```bash
echo ${userNames[@]}
echo ${userNames[*]}
```
will both print all the values in the array `userNames`

<details>
<summary>Scripts</summary>

[array3](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/array3)
</details>

### 1. Using `@`
[array4](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/array4)

<details>
<summary>Output</summary>
<img src="https://user-images.githubusercontent.com/96164229/240233263-fde9ba1e-bbf9-49cb-82dd-6021b2a5e9c3.png" width="60%" height="60%">
</details>

### 1. Using `*`
[array5](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/array5)

<details>
<summary>Output</summary>
<img src="https://user-images.githubusercontent.com/96164229/240235230-ec46987e-c63e-49dd-8eb7-3c9d954080ab.png" width="60%" height="60%">
</details>

**Notice that in** `arr` **there is a key-value pair** `user3` **which has a corresponding value** `"scripters in Linux"`. **If you notice the outputs of** `array4` **and** `array5`, **you will notice that for** `user3` **the output doesnot appear to be one single string but rather as individual elements. To resolve this, we will enclose** `${arr[@]}` **and** `${arr[*]}` **within double quotes as shown by the scripts below:**

* [array6](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/array6)
<details>
<summary>Output</summary>
<img src="https://user-images.githubusercontent.com/96164229/240239985-4cb2c330-949a-4e2f-a660-6166964c859b.png" width="60%" height="60%">
</details>

* [array7](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/array7)
<details>
<summary>Output</summary>
<img src="https://user-images.githubusercontent.com/96164229/240240049-e0e6d5e7-92d2-42bb-88f5-33c2cb36f59c.png" width="60%" height="60%">
</details>

The difference between `@` and `*` is clearly visible from the above outputs of `array6` and `array7`.

<p align="center">
&#9678; &#9678; &#9678;
</p>
