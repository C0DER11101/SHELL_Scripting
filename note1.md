# Shell scripting

>To check the installed shells present in your system, type the following command:

```bash
cat /etc/shells
```

>To search for a shell, say tcsh shell


```bash
apt search tcsh
```

>To print hidden directories, type:

```bash
ls -a
```


In the bin folder we generally have the user commands.
In the sbin folder we have the commands that is for the previlege or the root user.


To change our user shell permanently, we must use the command 'chsh'; before doing this, say you want to change you user shell
to tcsh shell, then you need to first know the location of tcsh, so type this command:

```bash
which tcsh
```

this will show you the location of tcsh.

Now type:

```bash
chsh
```

It will ask you your password(user password).
After that the location of the shell will be asked(the shell to which you want to change).
Type the location of the tcsh shell as shown by 'which tcsh' command.
Changes will be done, but they won't be shown, so you will have to login as 'priyanuj'(your username). To do that, type the
following command:

```bash
su - priyanuj
```
Again your user password will be asked, enter it and press Enter. But this will still not work, so again
you will need to log out and then login again. You can also restart the computer if you want to.
