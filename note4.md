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

Now, after this, you type `!!` in your shell and press enter, you will see that again previous command i.e `ls` will be repeated and again
the list of directories and files present in that folder will be shown.

The image illustrates what I just said:

<img src="https://user-images.githubusercontent.com/96164229/219059356-fbce720c-07fc-4aab-bdab-76dc65ec8143.png" width="60%" height="60%">

Now, if you want the shell to treat `!` as a normal character then, you will have to turn off "histexpand" shell option!!

Type:
`set +o histexpand`

Again, to turn it back on, type:

`set -o histexpand`

# "braceexpand" shell option

If you type `echo {1..15}` ( the two dots `..` are mandatory) then it print all numbers from 1 to 15.
The image below shows it:

<img src="https://user-images.githubusercontent.com/96164229/219057608-c98c2201-bb68-426c-9e50-384b347c74ac.png" width="60%" height="60%">

`echo {1..30..2}` displays numbers by from 1 to 29, the `2` represents the offset that is the number which each number should be incremented.

The images illustrates this:

<img src="https://user-images.githubusercontent.com/96164229/219056514-7119b662-5c16-46a3-b84f-c823989b44cb.png" width="60%" height="60%">

You can also print alphabets in the same manner, you can also put the interval/offset(the third argument, it should always be a number).

the following image shows more functionalities of `{}`.

<img src="https://user-images.githubusercontent.com/96164229/219055927-807ae75b-2136-46ea-be8d-1ed389086ce2.png" width="60%" height="60%">

One awesome trick that you can do with the braces `{}` is this:

<img src="https://user-images.githubusercontent.com/96164229/219054243-fd959f14-c1db-4753-808c-54551a667e1c.png" width="60%" height="60%">

Here, we have created 15 text files :blush:

Like we created the 15 text files using the braces, we can also delete those 15 text fils using the braces, the image shows this:

<img src="https://user-images.githubusercontent.com/96164229/219054534-d3fa770c-6661-419f-b56d-f6cf0bdf0d6e.png" width="60%" height="60%">

Now, when you turn off the `braceexpand` shell option: `set +o braceexpand` it will not display any range, nor will you be able to create
many files at once.

The following image illustrates what I mean:

<img src="https://user-images.githubusercontent.com/96164229/219054679-37c17585-6310-4e64-96d5-ab5f7fea9f6a.png" width="60%" height="60%">

`set -o braceexpand` enables the shell option `braceexpand` again!!


# "noglob" shell option

The `noglob` shell option is off by-default, that means we can use wildcards in our shell to perform special operations!!

This image shows the use of a wildcard(`[]`):

<img src="https://user-images.githubusercontent.com/96164229/219057747-70100ef0-be70-4c33-809f-7a3f3d9fb02b.png" width="60%" height="60%">

When we used `ls file[12].txt`, it meant that the shell should list only file1.txt and file2.txt and no other files should be listed!

Now let us enable `noglob`:

`set -o noglob`

Now if we use the same command `ls file[12].txt`, it shows us the following error!!

<img src="https://user-images.githubusercontent.com/96164229/219056156-dfaa2bbe-e582-4d10-a214-d44089b6a401.png" width="60%" height="60%">


# "noclobber" shell option

This option is off by-default.

It allows existing files to be overwritten by the newly entered data.

It is only for the output-redirection operator!!

Consider the following image:

<img src="https://user-images.githubusercontent.com/96164229/219058586-9fe5c97a-fe18-4e3a-a59d-5343cd0be777.png" width="60%" height="60%">

`echo "Hello World" > file1.txt` basically writes the output i.e `Hello World` into the text file `file1.txt`

When we write `ls > file1.txt` it basically means that whatever output the `ls` command gives that output will be overwritten to `file1.txt`.
So we get the earlier contents of `file1.txt` are overwritten by the new ones.

Now, let us turn on `noclobber`:

`set -o noclobber`

The following image shows all of it:

<img src="https://user-images.githubusercontent.com/96164229/219058658-bf58b939-eb90-4b8b-88f9-929f476e9955.png" width="60%" height="60%">

So, with `noclobber` on, the file `file1.txt` will never be overwritten.

:heavy_exclamation_mark:**NOTE**:heavy_exclamation_mark:

The `noclobber` prevents overwriting only in files that already have contents in them and empty files, but for non-existent files, a new file will be created and content will be written successfully.

Again, `set +o noclobber` turns off the `noclobber` shell option!!

**`noclobber` doesnot prevent appending of data into already existing file(empty or otherwise).**

# "allexport" shell option

It's for automatically converting the shell variable into environment variable!!

The following image illustrates what I just said:

<img src="https://user-images.githubusercontent.com/96164229/219058103-01700233-dad5-4bd2-a607-96f9e24dce04.png" width="60%" height="60%">

Once, `allexport` is turned on, the shell variable `asdf` is automatically converted into an environment variable!!
But the shell variable `wert` was created before turning `allexport` on, so it won't be converted to environment variable.


# "notify" shell option

`notify` is off by default. So, when we run a commad like this:

`sleep 2 &` (basically, `sleep 2` means pause for 2 seconds), the command is executed but we are not notified about its completion!!

The following image illustrates what I just said.

<img src="https://user-images.githubusercontent.com/96164229/219056280-caa04b6c-660e-4c9c-993c-7b1ca4121988.png" width="60%" height="60%">

Notice that there is no `[1]+ Done ........` after `sleep` got executed!! But when we run a different command like the `w` the notification of completion of the `sleep` appears at the end:

<img src="https://user-images.githubusercontent.com/96164229/219055786-0451c85a-5d2d-41a3-90bc-f7c1a06de116.png" width="60%" height="60%">

**Basically, it shows the notification only when we run a different command, meaning that it won't show the notification even when 2 seconds have passed**.

So this is late notification, because the `notify` shell option is off!!

To get instant notification, we just need to turn on the `notify` shell option!!

`set -o notify`

Now, when we will write `sleep 2 &` then what will happen is it will notify us that `sleep` completed execution after 2 seconds!!

The image below illustrates this:

<img src="https://user-images.githubusercontent.com/96164229/219058831-a65aa52d-926d-4a3e-9d0e-f124bd9b5d63.png" width="60%" height="60%">

As you might be able to see from the image above that it displayed `[1]+ Done.....`(after 2 seconds obviously!!), but it notifies the 
completion at the next prompt. Is that a problem? As shown by the image below, it's not at all a problem because even after notifying
in the next prompt, the shell will still wait for the user to enter a command as is seen in the image above(the cursor is in the newline, it 
is waiting for the user to enter a command).

Now, the next image shows that we have entered a command and it executed successfully!!!

<img src="https://user-images.githubusercontent.com/96164229/219058893-2a83b43a-895e-432e-a89c-733a1d660239.png" width="60%" height="60%">

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
