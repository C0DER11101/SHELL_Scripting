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

<img src="https://user-images.githubusercontent.com/96164229/219058412-c259f30e-c613-4802-821b-6e2c3a7cc00e.png" width="60%" height="60%">

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

<img src="https://user-images.githubusercontent.com/96164229/219059032-a4c8d60e-1aa7-40a9-9584-766276a56a4f.png" width="60%" height="60%">

<img src="https://user-images.githubusercontent.com/96164229/219059063-af7f214e-fc6c-413c-8a29-a580e5f0982c.png" width="60%" height="60%">


Now, if we do the same using this command:  `/bin/nano ./script2` then also the same thing will happen!!

These images explain what I just said!!

<img src="https://user-images.githubusercontent.com/96164229/219059141-86e39b05-7160-4682-b07d-7021660e6c1f.png" width="60%" height="60%">
<img src="https://user-images.githubusercontent.com/96164229/219059233-0547e568-af0d-4443-aa6c-d268b32f8703.png" width="60%" height="60%">

# The "./"

**Purpose:** _used to execute any file_ in linux.

## "./" broken down

> the "." in "./" means the current working directory and "/" means what is inside the current working directory.

The image here explains things better:

<img src="https://user-images.githubusercontent.com/96164229/219057673-466bd65e-4e4f-4ca1-bf96-b854058b973c.png" width="60%" height="60%">

Here the "." means the current directory that is  `/home/priyanuj/Desktop/C0DER11101/ShellScriptLearn` and "/script5" means script5 is in the
current working directory!!


To explain it simply, if we write what is written in this image then also, the file will get executed:

<img src="https://user-images.githubusercontent.com/96164229/219054396-315ce9c5-8c03-43f4-93b7-1479d92357fa.png" width="60%" height="60%">

**Without the path you cannot execute any executables in linux!!!**


# A natural question

> If executables require path to execute, then how are 'ls', 'cd' or any other linux command we know able to execute without any path???

By default, our shell tries to find the command in any location defined by [$PATH variable](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/note3.md#the-path-variable).

So, when we type `ls` then the shell tries find the command in the locations defined by $PATH($PATH contains many locations, remember), and 
finds it in the path `/usr/bin/ls` (which is defined in $PATH) and executes it!!!

So writing `ls` is similar to writing `/usr/bin/ls`

# Executing a file without defining any external path.

_For this we need to go to the folder where our executables are located and type_ `echo $PATH`

In this image an executable file is present in Documents folder, so we go there and type `echo $PATH`.

<img src="https://user-images.githubusercontent.com/96164229/219055503-8494ecd6-7f8e-4bf3-8759-786ef23254e3.png" width="60%" height="60%">

Here, the user created a directory called `cmd` because the $PATH variable was showing a path which was `/home/vicky/Documents/cmd` and then
copied the file `script5` to the folder `cmd`.

<img src="https://user-images.githubusercontent.com/96164229/219055587-b2473ce7-0035-4042-b29c-38b067c79122.png" width="60%" height="60%">

After this, we can simply type the name of the file `script5` in this case and it will run like `ls`, `cd` or any other linux command.

<img src="https://user-images.githubusercontent.com/96164229/219055659-b39e1cf0-01f7-4158-82e2-e0786d480317.png" width="60%" height="60%">
