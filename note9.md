# Test commands, [] vs [[]] and advance features of [[]]

## test command

>The test command is used to check whether a given command is true or false. It can also be used to check the type of a file and the permission related to that file.

* returns 0 as exit status code if the expression is true.
* returns 1 as exit status code if the expression is false.


In the image below, we are comparing `1` with itself `1` and checking the value `$?`.

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

To check if a given name is a file, we have to use `-f` as shown in the image below:

<img src="https://user-images.githubusercontent.com/96164229/219567678-fcc6c4f5-7d12-4bf4-9063-4254aad9f0b8.png" width="60%" height="60%">

Here `t1` is a file and that's why `test` command returns 0 which gets stored in `$?`.

But `tests/` is a directory and using `-f` before is an error. So `test` returns 1 which gets stored in `$?` as shown in the image below:

<img src="https://user-images.githubusercontent.com/96164229/219567707-5114e981-9588-482b-9404-619e4fa48782.png" width="60%" height="60%">


---
