# The `echo` command

**Put quotes around the string if it has multiple spaces otherwise `echo` will replace those multiple spaces by a single space.**

* [echo1](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/echo1).

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/239968854-e67e284c-db45-4637-9cf1-1de8315bce3b.png" width="60%" height="60%">


**If a quoted string with multiple spaces is stored in a variable and if we have not enclosed the variable name within quotes while using it with** `echo` **then those multiple spaces will be replaced by a single space.**

* [echo2](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/echo2)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/239970929-dea8db64-d5c3-459c-962b-d82e3d3ab4fe.png" width="60%" height="60%">

# Options that we can use with `echo`

## -e
>Enables the interpretation of the escape sequence characters.

[echo3](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/echo3)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/239974527-cf0a35d4-4763-4994-a48b-5b7baa3b2965.png" width="60%" height="60%">

## -E
>Does the opposite of `-e`(disables the interpretation of escape sequence characters). It's also the default option used by `echo`.

## -n
>Disables the use of trailing newline character that `echo` uses by default while printing an output to the screen.

[echo4](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/echo4)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/239976967-f8fabc33-2d1a-4358-b135-f6155c1477da.png" width="60%" height="60%">

<p align="center">
&#9678; &#9678; &#9678;
</p>
