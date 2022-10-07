# Important environment and shell variables; identifying shell variables and environment variables

## The $USER variable

![$USER](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/The%24USER.png?raw=true "$USER")
- this variable contains the value of the current logged in user.

## The $HOME variable

![$HOME](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/The%24HOME.png?raw=true "$HOME")
- this variable contains the home directory for the logged in user.

## The $SHELL variable

![$SHELL](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/The%24SHELL.png?raw=true "$SHELL")
- this variable contains path of the current shell used by the user.

## The $PWD variable

![$PWD](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/The%24PWD.png?raw=true "$PWD")
- contains the current working directory

## The $PATH variable

![$PATH](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/The%24PATH.png?raw=true "$PATH")
- contains all the paths

## Changing the $PATH variable

_it's simple, just open .bashrc, and there add the path that you want to add, the paths are separated by a colon(:)._
_You can also change the path in .bashrc file, just open .bashrc and there type:_

```bash
export PATH="$PATH:/<your path that you want to add or append>"
```

## The $UID variable

![$UID](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/%24UID.png?raw=true "$UID")
- Whenever a user is created in Linux, then an associated Unique ID with that user is also created.
- $UID will tell the current user's unique id.

## The $HOSTNAME variable

- It's as simple as this image.
![$HOSTNAME](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/%24HOSTNAME.png?raw=true "$HOSTNAME")

## The $OSTYPE variable

- This variable shows the os type(it's as simple as the image below).
![$OSTYPE](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/%24OSTYPE.png?raw=true "$OSTYPE")

There also variables with the name `PS1` and they go till `PS4`.
These variables are used to set our prompt(temporarily).

## $PS1

Let's say, we open a terminal and type:
![$PS1](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/%24PS1.png?raw=true "$PS1")

Now, if we want to change our prompt temporarily, we may write:
**_As I was using bash with modified looks, I couldnot get it show the temporary change, so I had to change my shell to zsh_**
**_The following image is of the zsh shell not the bash shell_**

![PS1](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/PS1.png?raw=true "PS1")

_If you use PS1="\u" then the prompt will change to your username:_

This image has been taken from the youtube video from which I am learning:
![PS1](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/PS1_pt2.png?raw=true "PS1")

_If you use PS1="\u:\h " then the prompt will look something like this:_

![PS1](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/PS1_pt3.png?raw=true "PS1")

## PS2

_This image should explain itself_

![PS2](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/PS2.png?raw=true "PS2")

When you type a command and after that you add a \ then the command doesnot end there, instead it goes to the next line and waits for you
enter more command.
_Again, the following image is from zsh shell._

![PS2](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/PS2_pt2.png?raw=true "the \ denotes continuation of command")

The continued prompt that appears after pressing enter(after adding the \ after the command) is PS2.


## PS3

- This is used when the `select` command is used in linux. `switch` case is generally used after the `select` command.


## PS4

- This is used when you execute your shell script in debug mode.


# :question: A common question :question:

**_How to identify shell variable and environment variable?_**

**Step-1**

Suppose the variable that we want to identify is **$USER**.
Search the variable in the environment variables.
```bash
env | grep USER
```
The output will look something like this:
![Output](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/VariableIdetification.png?raw=true)

**Step-2**

Search the variable in the shell variables.
```bash
env | grep USER
```
The output will look something like this:
![Output](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/VariableIdentification_pt2.png?raw=true)


## $EDITOR and $VISUAL

_These are used to make default editors_

**$VISUAL is generally for the visual editors**

**$EDITOR is for the line editors**

Whenever a process wants to use an editor it will try to use the editor defined in $VISUAL, if it fails, then it will try to use the editor
defined in $EDITOR

**If I make changes in one user's .bashrc file then it is not going to reflect another user's .bashrc file. Each user has a separate .bashrc**
**file.**

But if you want to make changes irrespective of the users, then you have to make changes in /etc/environment/ file.
