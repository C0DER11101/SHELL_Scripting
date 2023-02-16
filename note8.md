# Exit command in shell scipting and exit status code of a command

## What is an exit status code?
>It is an integer value between 0 to 255 which is returned by the child process to the parent process upon its execution.

_If the exit status code of a command is 0 then it means that the command has run successfully._

_If exit status code of a command is non-zero then it means that the command has run with some errors._

**The exit status code of a command is stored in a special variable which is:** `$?`.

To see the exit status code of the previous command just type:

```bash
echo $?
```

This image below shows value stored in `$?` which is the exit status code of `ls`.

<img src="https://user-images.githubusercontent.com/96164229/219396736-dbabb50d-aae6-42d3-a9ed-758a3bcd40ee.png" width="60%" height="60%">

Now this image below shows the non-zero exit status code of `ls -w`, which is actually an invalid command, stored in `$?`.

<img src="https://user-images.githubusercontent.com/96164229/219401969-2c816b08-f7a7-4858-ac2d-ec35869e38da.png" width="60%" height="60%">

The image below shows the exit status code for a command-not-found error.

<img src="https://user-images.githubusercontent.com/96164229/219403147-2e93e9ba-3027-448e-90fa-f6f9bc20ee33.png" width="60%" height="60%">


## The exit command
The `exit` command basically terminates a program.

Look at this scipt: [t8](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/t8).

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/219411823-c7f0c910-cd34-460c-abf5-864ebf01dfe8.png" width="60%" height="60%">


We can also provide exit status code to `exit` command. [t9](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/t9).

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/219414494-040cb24a-9cfd-4ed8-86a3-f56a1d046e79.png" width="60%" height="60%">

Now, if we exit with exit status code as 256, then what will be the output? The script below shows it:

[t10](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/t10).

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/219415753-2e741e47-e26e-4120-9981-fcb265ee0308.png" width="60%" height="60%">

So when we exit with exit status code 256, then the exit status code stored in `$?` is 0.

Similarly for `exit 257` the value in `$?` will be 1.
