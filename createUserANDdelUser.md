# [createUser](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/createUser)

The `id` command:

This command shows the details of the user:

```bash
id <username>
```
<p align="center">
OR
</p>
```bash
id ${USER}
```

```bash
echo "${user}:${user}_@123" | chpasswd &> /dev/null
```

Here we are setting the password for each user. Say, if `${user}` is `user61` then `${user}_@123` will be `user61_@123`.

We send `"${user}:${user}_@123"` as an input to the command `chpasswd`.

[chpasswd](https://www.networkworld.com/article/3639611/using-chpasswd-to-change-account-passwords-on-linux.html).

When running `createUser`, we need to provide sudo privileges, because we are using the command `adduser` in it.

**Image-1:**
<img src="https://user-images.githubusercontent.com/96164229/236435696-e4cdcdcf-3828-4494-bcbf-8800c2873213.png" width="60%" height="60%">

**Image-1:**
<img src="https://user-images.githubusercontent.com/96164229/236435786-0eab4a44-500f-4ac1-ba3e-5b0512383e64.png" width="60%" height="60%">


# [delUser](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/delUser)
This script is very much self-explanatory.

`delUser` also requires sudo privileges since the command `deluser` is used in it.

**Image-1:**

<img src="https://user-images.githubusercontent.com/96164229/236435910-04fa59f1-7c16-4089-855b-2768aaf5fd63.png" width="60%" height="60%">

**Image-2:**

<img src="https://user-images.githubusercontent.com/96164229/236435988-2e8750f4-a814-4d62-a30a-9b1070b4f425.png" width="60%" height="60%">


<p align="center">
&#9678; &#9678; &#9678;
</p>
