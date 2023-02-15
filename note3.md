# Important environment and shell variables; identifying shell variables and environment variables

## The $USER variable

<img src="https://user-images.githubusercontent.com/96164229/219057539-a4185702-a222-40b9-bd17-2af0f4efff52.png" width="60%" height="60%">
- this variable contains the value of the current logged in user.

## The $HOME variable

<img src="https://user-images.githubusercontent.com/96164229/219057210-60a9d907-3877-43c3-8ec7-82c454765c49.png" width="60%" height="60%">
- this variable contains the home directory for the logged in user.

## The $SHELL variable

<img src="https://user-images.githubusercontent.com/96164229/219057491-d94acda5-cb9f-4754-a94f-875f5e63eafe.png" width="60%" height="60%">
- this variable contains path of the current shell used by the user.

## The $PWD variable

<img src="https://user-images.githubusercontent.com/96164229/219057433-13f272a0-0179-40cf-9543-34cb915aee29.png" width="60%" height="60%">
- contains the current working directory

## The $PATH variable

<img src="https://user-images.githubusercontent.com/96164229/219057314-b1b761b8-dc3a-4a63-a655-9fb97af4e853.png" width="60%" height="60%">
- contains all the paths

## Changing the $PATH variable

_it's simple, just open .bashrc, and there add the path that you want to add, the paths are separated by a colon(:)._
_You can also change the path in .bashrc file, just open .bashrc and there type:_

```bash
export PATH="$PATH:/<your path that you want to add or append>"
```

## The $UID variable

<img src="https://user-images.githubusercontent.com/96164229/219053946-46c72e68-473d-4e6f-8a5c-7e769c43ba66.png" width="60%" height="60%">
- Whenever a user is created in Linux, then an associated Unique ID with that user is also created.
- $UID will tell the current user's unique id.

## The $HOSTNAME variable

- It's as simple as this image.
<img src="https://user-images.githubusercontent.com/96164229/219053563-2ea9e274-5230-464e-9615-23866aef68ed.png" width="60%" height="60%">

## The $OSTYPE variable

- This variable shows the os type(it's as simple as the image below).
<img src="https://user-images.githubusercontent.com/96164229/219053739-f0d6f44f-b2b9-48b7-a7f2-54ed859609a5.png" width="60%" height="60%">

There also variables with the name `PS1` and they go till `PS4`.
These variables are used to set our prompt(temporarily).

## $PS1

Let's say, we open a terminal and type:
<img src="https://user-images.githubusercontent.com/96164229/219053872-ea662a9f-7229-43ec-9149-8aac1681a7f9.png" width="60%" height="60%">

Now, if we want to change our prompt temporarily, we may write:
**_As I was using bash with modified looks, I couldnot get it to show the temporary change, so I had to change my shell to zsh_**
**_The following image is of the zsh shell not the bash shell_**

<img src="https://user-images.githubusercontent.com/96164229/219056731-6fb3ff75-3d98-46d8-8695-27493e8f2024.png" width="60%" height="60%">

_If you use PS1="\u" then the prompt will change to your username:_

This image has been taken from the youtube video from which I am learning:
<img src="https://user-images.githubusercontent.com/96164229/219056801-ec9f69e8-04db-4fdd-b04d-644ea7de5a89.png" width="60%" height="60%">

_If you use PS1="\u:\h " then the prompt will look something like this:_

<img src="https://user-images.githubusercontent.com/96164229/219056882-2c56ca39-0b22-41e1-86f0-5019669206f8.png" width="60%" height="60%">

## $PS2

_This image should explain itself_

<img src="https://user-images.githubusercontent.com/96164229/219056942-9e401cdb-693f-4de0-83cb-341a29dcdb67.png" width="60%" height="60%">

When you type a command and after that you add a \ then the command doesnot end there, instead it goes to the next line and waits for you
enter more command.
_Again, the following image is from zsh shell._

<img src="https://user-images.githubusercontent.com/96164229/219057067-748051ad-1253-43a1-9ab1-6d88c0ed5dd5.png" width="60%" height="60%">

The continued prompt that appears after pressing enter(after adding the \ after the command) is PS2.


## $PS3

- This is used when the `select` command is used in linux. `switch` case is generally used after the `select` command.


## $PS4

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
<img src="https://user-images.githubusercontent.com/96164229/219057887-f4ce1a19-738c-49ad-bfdf-8e5e5a93d755.png" width="60%" height="60%">

**Step-2**

Search the variable in the shell variables.
```bash
set | grep USER
```
The output will look something like this:
<img src="https://user-images.githubusercontent.com/96164229/219057952-872bc57c-60bc-4a22-b635-24b83a39857e.png" width="60%" height="60%">


## $EDITOR and $VISUAL

_These are used to make default editors_

**$VISUAL is generally for the visual editors**

**$EDITOR is for the line editors**

Whenever a process wants to use an editor it will try to use the editor defined in $VISUAL, if it fails, then it will try to use the editor
defined in $EDITOR

**If I make changes in one user's .bashrc file then it is not going to reflect another user's .bashrc file. Each user has a separate .bashrc**
**file.**

But if you want to make changes irrespective of the users, then you have to make changes in /etc/environment/ file.
