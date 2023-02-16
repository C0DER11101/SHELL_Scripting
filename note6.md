# Variables in Shell scripting

_The variable name can start with any letter or underscore, but it cannot start with a digit, although it may contain digits in it._

**There should be no space between variable name, equals to and variable value!!**

Example:

```bash
var = 45
```

This is invalid because there is a space between both, the variable name(`var`) and the equals to(`=`), and the equals to(`=`) and the value(`45`).

## Importance of curly braces {}


```bash

var=45
var1="this is good"

echo $var
echo $var1


echo $varhello
echo $var1
```

Here we can see how important `{}` are are

Look closely, the line `echo $var` will show us the value of `var` but look at the line where `echo $varhello` is written, the motive of this line was to produce this output `45hello` but it outputs nothing because `varhello` is taken as a new variable name(which is not).

Now, look here below:

```bash
echo ${var}hello
```

Now, here the output is produced as `45hello`. So, this is the importance of `{}` with variables. Curly braces are also used with arrays in shell scripting.

## Difference between variable name within double quotes and variable not within double quotes

[variable_ptb](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/variable_ptb) shows the difference between variable within double quotes and variable not within double quotes.


In this file, we initialized `var` with `"abc*"`, then we used these two lines

```bash
ls "${var}"
ls ${var}
```

Here, the first command `ls "${var}"` is equivalent to writing `ls "abc*"` that means all those files which have a name `abc*` which
which ends up giving the file not found error, because there no file that starts with the name `abc*`.

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/219056598-08d73a9f-2a4f-49d5-9bca-22da05a9d794.png" width="70%" height="40%">

But the second command `ls ${var}` is same as writing `ls abc*` that means show all those files whose name has `abc` included in it; and this shows the files `abc1.txt`, `abc2.txt` all the way to `abc5.txt`.

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/219056646-92a49ba4-aafc-4f55-bb90-7f9293cdfa4e.png" width="70%" height="40%">


## Storing a command in a variable

There are two ways of storing a command into a variable.

First way:  using backticks \`.

Second way: using $()


[StoringOutputToVariable](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/StoringOutputToVariable)

This file shows the two ways how we can store a command in a variable.

The first way(using backticks) :

```bash
var=`ls -l`
```

The second way(using `$()`) :

```bash
service=$(systemctl status apache2)
```
