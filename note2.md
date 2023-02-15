# Shell variables and environment variables

## Variable

`name=value`

`value` can be anything, e.g. string, command, file path, digits, etc.

Who creates variables and uses them $\rightarrow$ Processes.

Linux has two types of variables:
1. Environment variable.
2. Shell variables.

### ENVIRONMENT VARIABLES

When an environment variable is created then the subsequent processes can also use that variable.
Environment variable can be created by any process(including the shell process).

The shell variable can only be created by the shell process. Here the subsequent processes won't be able to use that variable.

To see all the environment variables that have already been set, you need to type:

~$ env

You can also use:

~$ printenv

If you want to create your own environment variables, type:

~$ export NAME="whoami"

Now, whoami is a command of Linux which shows you your username.
But now, you don't have to write 'whoami', just type:

~$ $NAME

and everything will be done!!

To remove the environment variable, type the following command:

~$ unset NAME

This will the environment variable NAME

### SHELL VARIABLES

Example:

```bash
name = pwd
```

```bash
changeDir = cd
```


The above are shell variables.

`name` is a user-defined variable and it stores the command `pwd`(present working directory).
Similarly, `changeDir` is also a user-defined variable and it stores the command `cd`(change directory).

You can give any names to these variables.

If you want to view all the shell variables that have been setup; just type this command:

To view the value of the variable name or any other shell variable, you can either type:

```bash
echo $name
```

OR you can type:

```bash
echo ${name}
```


The output will be the same in both the cases.
The curly braces are put to remove ambiguity!!!

```bash
set
```


To unset any shell variable, 

```bash
unset name
```



Another way of creating environment variables:
first create a shell variable and then export it.

Example:

First we create a shell variable:

```bash
name=whoami
```

After that we type:

```bash
export name
```

Now name has been made an environment variable.

Now when you will type:
```bash
env | grep name
```

Then output will be:
```
name=whoami
```

meaning that name has been made an environment variable.


>Any environment variable created using the shell process also becomes a shell variable.


### ALIAS

Purpost of alias is to indicate a string with some other name.

Example:

```bash
~$ alias cl=clear
```

This command just makes an alias for the command 'clear' and that is 'cl' meaning that you don't have to write 'clear' everytime to clear the screen of the terminal, you just need to type 'cl' in the prompt and your terminal screen will become clear.

To remove alias, use:

```bash
unalias cl
```


*When you create an alias, then it remains as long as the terminal remains, as soon as you close the terminal, the alias, environment variables(that you created) and the shell variables(that you created) get lost*


To make these variables permanent, open the .bashrc file and edit it.
Put the alias that you want to make permanent;
example:

```bash
alias cl=clear
```

and save the file and exit it.
