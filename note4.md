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

`notify` is off by default. So, when we run a commad like this:

`sleep 2 &` (basically, `sleep 2` means pause for 2 seconds), the command is executed but we are not notified about its completion!!

The following image illustrates what I just said.

![Image](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/NotifyShellOption.png?raw=true "Notify is off")

Notice that there is no `[1]+ Done ........` after `sleep` executed!! But when we run a different command like the `w` the notification of completion of the `sleep` appears at the end:

![Image](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/LateNotify.png?raw=true "late notification")

**Basically, it shows the notification only when we run a different command, meaning that it won't show the notification even when 2**
**seconds have passed**.

So this is late notification, because the `notify` shell option is off!!

To get instant notification, we just need to turn on the `notify` shell option!!

`set -o notify`

Now, when we will write `sleep 2 &` then what will happen it will notify us that `sleep` completed execution after 2 seconds!!

The image below illustrates this:

![Image](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/notifyIsOn.png?raw=true "notify is on")

As you might be able to see from the image above that it displayed `[1]+ Done.....`(after 2 seconds obviously!!), but it notifies the 
completion at the next prompt. Is that a problem? As shown by the image below, it's not at all a problem because even after notifying
in the next prompt, the shell will still wait for the user to enter a command as is seen in the image above(the cursor is in the newline, it 
is waiting for the user to enter a command).

Now, the next image shows that we have entered a command and it executed successfully!!!

![Image](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/notifyIsOn2.png?raw=true "notify is on")

From the image above, it is clearly visible that the command `w` has been entered in the newline(where the cursor was waiting for the user
to enter a command)!!


# "ignoreeof" shell option

When we press `ctrl+d` then the terminal closes. This happens because `ignoreeof` shell option is set to off, but if we turn it on:

`set -o ignoreeof`

then pressing `ctrl+d` won't close the terminal. We will have to explicitly write `exit` to quit the terminal.

`set +o ignoreeof` turns off `ignoreeof`.


:heavy_exclamation_mark: **A very important note** :heavy_exclamation_mark:

Any changes made to the shell options is local to that terminal in which the changes have been made. If you close that terminal and start a
new terminal then you won't find those previous changes, everything will be back to usual.

To make the change permanent, then you should write the change to you `.bashrc` file!!
