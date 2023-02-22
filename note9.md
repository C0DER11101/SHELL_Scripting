# Test command, [] vs [[]] and advance features of [[]]

## test command

>The test command is used to check whether a given command is true or false. It can also be used to check the type of a file and the permission related to that file.

* returns 0 as exit status code if the expression is true.
* returns 1 as exit status code if the expression is false.


In the image below, we are comparing `1` with itself `1` and checking the value of `$?`.

<img src="https://user-images.githubusercontent.com/96164229/219565183-40c88311-a7b1-4355-9716-57b64a4a8547.png" width="60%" height="60%">

The expression `1 -eq 1` evaluates to true and so `test` returns 0 which gets stored in `$?`.

But the expression `1 -eq 2` in the image below evaluates to false and so `test` returns 1 which gets stored in `$?`.

<img src="https://user-images.githubusercontent.com/96164229/219565740-64e50a0e-7f1b-479d-a034-7c17970113d4.png" width="60%" height="60%">


**Comparing two strings**

<img src="https://user-images.githubusercontent.com/96164229/219566270-00ee6299-62b3-45f4-92e1-7c904e8227ca.png" width="60%" height="60%">

In the image above we are comparing two strings. The result gets stored in `$?`. Since the two strings are not equal, 1 gets stored in `$?`.


The opposite happens in the image below:

<img src="https://user-images.githubusercontent.com/96164229/219566313-3914291d-adf5-4fcc-ae74-53eebcb33048.png" width="60%" height="60%">

**Checking whether a given name is a directory or a file**

To check if a given name is a file, we have to use `-f` as shown in the image below and to check if a name is a directory, we must use `-d`.

<img src="https://user-images.githubusercontent.com/96164229/219567678-fcc6c4f5-7d12-4bf4-9063-4254aad9f0b8.png" width="60%" height="60%">

Here `t1` is a file and that's why `test` command returns 0 which gets stored in `$?`.

But `tests/` is a directory and using `-f` before is an error. So `test` returns 1 which gets stored in `$?` as shown in the image below:

<img src="https://user-images.githubusercontent.com/96164229/219567707-5114e981-9588-482b-9404-619e4fa48782.png" width="60%" height="60%">


Now, we are checking if a name is a directory or not:

<img src="https://user-images.githubusercontent.com/96164229/220526413-d48d0fcf-7d90-4b57-9afc-9d63f7e66529.png" width="60%" height="60%">

<img src="https://user-images.githubusercontent.com/96164229/220526775-ec4a6aa2-1de1-46a4-b35a-c6f62a96809b.png" width="60%" height="60%">


## Combining expressions.


### -a $\rightarrow$ and
>Returns true if all the test expressions are true.

Consider the following command:
```bash
test 2 -gt 1 -a 3 -le 6
```

Now, `-a` means `and`. So, what the command means is that *test whether 2 is greater than 1 and 3 is less than 6*. This command will return true if both the expressions are true otherwise it will return false.

<img src="https://user-images.githubusercontent.com/96164229/220527735-cdee721d-bbe6-4a7e-9d89-06ba3c6b21f3.png" width="60%" height="60%">

The following `test` command will return false:

<img src="https://user-images.githubusercontent.com/96164229/220528755-61e74c74-2a41-47d4-9865-757d399e1228.png" width="60%" height="60%">

You can combine more than two expressions using `-a`.

### -o $\rightarrow$ or
>Returns false if all the test expressions are false.

```bash
test 3 -gt 2 -o 6 -lt 2
```
The above command evaluates to true because `3 -gt 2` is true.

<img src="https://user-images.githubusercontent.com/96164229/220529722-ce6f920a-81a2-43ce-9ec1-b21e9a8427f1.png" width="60%" height="60%">


In the image below, we are checking if 9 is greater than 12 or `testCommandOutput11.png` is a file or not.

<img src="https://user-images.githubusercontent.com/96164229/220530462-7d9e428a-5e99-48b6-9bc8-bb2acaf933be.png" width="60%" height="60%">

This command evaluates to true because even though 9 is not greater than 12 but `testCommandOutput11.png` is a file.


The following command evaluates to false:

```bash
test 9 -gt 12 -o -d testCommandOutput11.png
```

<img src="https://user-images.githubusercontent.com/96164229/220530480-9a065c2a-f5ad-4efd-b1a0-bd69181ba99b.png" width="60%" height="60%">

You can combine more than two expressions using `-o` as well.


### [] and [[]]
>Both these square brackets are reference of the test command.

**The single square bracket pair** (`[]`) **is same as using the test command.**

**The double square bracket pair** (`[[]]`) **is the enhanced version of the test command.**


#### []
The image below shows the use of `[]`:

<img src="https://user-images.githubusercontent.com/96164229/220532150-be553a61-15ac-414a-b6f4-2458cea3b3d9.png" width="60%" height="60%">

```bash
[ ! 2 -eq 2 ]
```

This command will evaluate to false, because we are using the not operator `!` here; `2 -eq 2` evaluates to true but the not before `2 -eq 2` inverts it to false:

<img src="https://user-images.githubusercontent.com/96164229/220533639-4d3a48c2-c220-4ec4-920c-6006faf96484.png" width="60%" height="60%">

#### [[]]




---
