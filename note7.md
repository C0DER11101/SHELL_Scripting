# Taking user input

### Note
>From this file onwards, the programs written in [test/](https://github.com/C0DER11101/SHELL_Scripting/tree/ShellScript/tests) will be linked.

We use the `read` command to take user input.

**By default, the input read by the `read` command is stored in a variable called REPLY.**


[UserInput1](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/UserInput1)

**REPLY is a shell variable.**


[UserInput2](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/UserInput2)

# read

`read` is used to get a user-input.

[t1](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/t1) shows how the `read` function is used.

Here is the output of `t1`:

<img src="https://user-images.githubusercontent.com/96164229/219341625-7a2f48cc-3dda-41a3-b93c-a15db1876fed.png" width="60%" height="60%">

When you don't provide any variable name with `read` then by default whatever you entered as input that gets stored in a shell variable called `REPLY`. `t1` shows how to use `REPLY` as well!!

We can also a variable with `read` as shown by [t2](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/t2) here.

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/219341788-ef0a489f-68ae-40d7-ae0c-49778d207fd1.png" width="60%" height="60%">

## Giving prompt to `read`
To prompt the user to enter a text we use `-p` with `read` as shown in the program below:

[t3](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/t3)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/219344080-58fa52b2-950a-4783-b44f-d6a5b89af65a.png" width="60%" height="60%">

## Stop taking after encountering a certain character

Now, till here when we entered the return key, the script stopped taking user input. But now what we want to do is that as soon we hit a particular character the script will stop taking input(we don't have to press the return key).

This is what we do in [t4](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/t4).

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/219350247-eca2437a-1ded-4c0c-831f-87f717121e6c.png" width="60%" height="60%">

Here, the script stops taking input as soon as we press the period `"."`. `"."` doesn't get stored in `INPUT`.


## Silent input

Now, if you are on Linux, then you might have observed this that when you enter your password in your terminal to download a something then your password is not being shown as you type it in. This is actually "silent input" where the input that you give basically remains "invisible" but actually each and every character is being entered as you type, it's just not being shown. This kind of input can be achieved by using `-s` after `read` as shown by [t5](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/t5).

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/219376405-5d8a0a8f-0edf-4f44-9e4e-aa58db39d1f7.png" width="60%" height="60%">

## Unsetting a variable

We use `unset` to unset a variable that has been set to a value via assignment or through user input.

The syntax is simple:

```bash

unset <variableName>
```

[t6](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/t6) shows how `unset` is used.

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/219380361-2b42e210-a1eb-44fa-9f6e-a2c8763f9bb0.png" width="60%" height="60%">

Here we try to access `text` after unsetting it, but as shown by the image above nothing is displayed after the text `accessing text:`. That means `text` has been unset.


## Read-only variables




---
