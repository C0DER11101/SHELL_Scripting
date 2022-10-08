# Shell options

- Shell options are variables that have a special meaning to our shell.

To list out all the options type:

`set -o`


## "history" shell option

type `set -o | grep history`

this will basically show the shell option "history" and its status(on/off).
The shell option "history" is by-default 'on' meaning that whatever command you type in your shell is going to get stored in the history.

If you type `history` in your shell then it is going to show you all the commands that you had previously used in your shell!!

To turn this off, type:

`set +o history`

To turn it back on, type:
`set -o history`


## "histexpand" shell option

The '!' has a special meaning in the shell.

For example:

When you type `ls` in a folder in your shell, it lists you the directories and files present in that folder.

Now, after this, you type `!!` in your shell and press enter, you will see that again previous command i.e `ls` will repeated and again
the list of directories and files present in that folder will be shown.

The image illustrates what I just said:

![Image](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/theTwoExclamationMarks.png?raw=true "!! command")

Now, if you want the shell to treat `!` as a normal character then, you will have to turn off "histexpand" shell option!!

Type:
`set +o histexpand`

Again, to turn it back on, type:

`set -o histexpand`

# "braceexpand" shell option

If you type `echo {1..15}` ( the two dots `..` are mandatory) then it print all numbers from 1 to 15.
The image below shows it:

![Image](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/TheBraces.png?raw=true "echo {1..15}")

`echo {1..30..2}` displays numbers by from 1 to 29, the `2` represents the offset that is the number which each number should be incremented.

The images illustrates this:

![Image](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/OffsetInEcho.png?raw=true "echo {1..30..2}")

You can also print alphabets in the same manner, you can also put the interval/offset(the third argument, it should always be a number).

the following image shows more functionalities of `{}`.

![Image](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/MoreOnBraces.png?raw=true "All about {}")

One awesome trick that you can do with the braces `{}` is this:

![Image](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/CreateManyFiles.png?raw=true "Create 15 text files")

Here, we have created 15 text files :blush:

Like we created the 15 text files using the braces, we can also delete those 15 text fils using the braces, the image shows this:

![Image](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/DeletingManyFilesAtOnce.png?raw=true "Delete 15 text files")

Now, when you turn off the `braceexpand` shell option: `set +o braceexpand` it will not display any range, nor will you be able to create
many files at once.

The following image illustrates what I mean:

![Image](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/Disabling_braceexpand.png?raw=true "Disabling the braceexpand")

`set -o braceexpand` enables the shell option `braceexpand` again!!


# "noglob" shell option

The `noglob` shell option is off by-default, that means we can use wildcards in our shell to perform special operations!!

This image shows the use of a wildcard(`[]`):

![image](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/Thewildcards.png?raw=true "[]")

When we used `ls file[12].txt`, it meant that the shell should list only file1.txt and file2.txt and no other files should be listed!

Now let us enable `noglob`:

`set -o noglob`

Now if we use the same command `ls file[12].txt`, it shows us the following error!!

![image](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/NoglobEnabled.png?raw=true "enable noglob, disable wildcards")


# "noclobber" shell option

This option is off by-default.

It allows existing files to be overwritten by the newly entered data.

It is only for the output-redirection operator!!

Consider the following image:
![image](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/noclobberdisabled.png?raw=true "noclobber is off")

`echo "Hello World" > file1.txt` basically writes the output i.e `Hello World` into the text file `file1.txt`

When we write `ls > file1.txt` it basically means that whatever output the `ls` command gives that output will be overwritten to `file1.txt`.
So we get the earlier contents of `file1.txt` are overwritten by the new ones.

Now, let us turn on `noclobber`:

`set -o noclobber`

The following image shows all of it:

![image](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/noclobberisOn.png?raw=true "noclobber is on")

So, with `noclobber` on, the file `file1.txt` will never be overwritten.

:heavy_exclamation_mark:**NOTE**:heavy_exclamation_mark:

The `noclobber` prevents overwriting only in files that already have contents in them and empty files, but for non-existent files, a new file will be created and content will be written successfully.

Again, `set +o noclobber` turns off the `noclobber` shell option!!

**`noclobber` doesnot prevent appending of data into already existing file(empty or otherwise).**

# "allexport" shell option

It's for automatically converting the shell variable into environment variable!!

The following image illustrates what I just said:

![image](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/allexportShellOption.png?raw=true "allexport")

Once, `allexport` is turned on, the shell variable `asdf` is automatically converted into an environment variable!!
But the shell variable `wert` was created before turning `allexport` on, so it won't be converted to environment variable.


# "notify" shell option
