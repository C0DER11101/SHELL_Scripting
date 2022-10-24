# The shebang("#!")

**What is shebang?**
> shebang is a _character sequence_ consisting of `#` and `!`. This is generally written at the starting of the file!!

**What does shebang do?**
> The shebang is used to define the interpreter program that will be used while executing a file.

To explain this, we created a file named `script`.

Here are the contents of the file [script](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/script "click here")

To make `script` executable, we write the following command:

`chmod +x script`

Now, to execute `script` we type the following command:

`./script`

this command is equivalent to writing `/bin/cat ./script`

Illustration is shown in the image below:

![Image](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/executingscript.png?raw=true "executing script")

Again let's say, we changed the contents of the file `script` to something like this:

```
#!/bin/ls

Hello world!!
Using shebang here!!
```

Then writing:

`./script` would have been equivalent to writing `/bin/ls ./script` which would have the following output:

`./script`.

Now, we have created another file with the name `script2` and changed its mode to executable mode(type `chmod +x script2`)

When we will execute `script2` as:

`./script2` then it will be equivalent to writing `/bin/nano ./script2` meaning that script2 will opened in the nano text editor!!

The following images explain in more details:

![Image](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/shebangContinued1.png?raw=true)

![Image](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/shebangContinued2.png?raw=true)


Now, if we do the same using this command:  `/bin/nano ./script2` then also the same thing will happen!!

These images explain what I just said!!

![Image](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/shebangContinued3.png?raw=true)
![Image](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/shebangContinued4.png?raw=true)

# The "./"

**Purpose:** _used to execute any file_ in linux.

## "./" broken down

> the "." in "./" means the current working directory and "/" means what is inside the current working directory.

The image here explains things better:

![image](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/TheDOTFORWARDSLASH.png?raw=true)

Here the "." means the current directory that is  `/home/priyanuj/Desktop/C0DER11101/ShellScriptLearn` and "/script5" means script5 is in the
current working directory!!


To explain it simply, if we write what is written in this image then also, the file will get executed:

![image](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/DOTSLASH.png?raw=true)

**Without the path you cannot execute any executables in linux!!!**


# A natural question

> If executables require path to execute, then how are 'ls', 'cd' or any other linux command we know able to execute without any path???

By default, our shell tries to find the command in any location defined by [$PATH variable](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/note3.md#the-path-variable).

So, when we type `ls` then the shell tries find the command in the locations defined by $PATH($PATH contains many locations, remember), and 
finds it in the path `/usr/bin/ls` (which is defined in $PATH) and executes it!!!

So writing `ls` is similar to writing `/usr/bin/ls`

# Executing a file without defining any external path.

_For this we need to go the folder where our executables are located and type `echo $PATH`_

Say, in this image an executable file is present in Documents folder, so we got there and type `echo $PATH`.

![image](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/ExecuteWithoutPath1.png?raw=true)

Here, the user created a directory called `cmd` because the $PATH variable was showing a path which was `/home/vicky/Documents/cmd` and then
copied the file `script5` to the folder `cmd`.

![image](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/ExecuteWithoutPath2.png?raw=true)

After this, we can simply type the name of the file `script5` in this case and it will run like `ls`, `cd` or any other linux command.

![image](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/ExecuteWithoutPath4.png?raw=true)
