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

# [delUser](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/delUser)

This script is very much self-explanatory.


<p align="center">
&#9678; &#9678; &#9678;
</p>
