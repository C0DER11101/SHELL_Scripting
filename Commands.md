# Commands that I used in the scripts

## 1
```bash
adduser <username>
```

You will be prompted to enter the <username> password, roomno, etc., press ENTER to keep them default.

```bash
adduser <username> --gecos "username, roomno, workphone, homephone, other"
```

Here you will only be prompted to enter the password. You can press ENTER to keep it default.

```bash
adduser --disabled-password <username> --gecos "username, roomno, workphone, homephone, other"
```

Here you won't be prompted to enter password.

```bash
adduser --disabled-password <username> --gecos "username, roomno, workphone, homephone, other" &> /dev/null
```

After using this command all the output of the command will be redirected to /dev/null.

## 2

Change the password of users:

```bash
chpasswd
```

1. Press ENTER
2. Type the username(that you used with adduser command) for whom you want to change the password.
3. Put a colon after the username and write the new password.
4. Press CTRL+C.

## 3
Logging in with another account.

```bash
su -l hello13
```
Press ENTER and then you will be prompted to enter the password for user hello13. Enter the password and then press ENTER. You will be logged in
as hello13.

## 4
Check existence of a user.

```bash
id <username>
```
This will return the userID(uid), groupID(gid) and other options if <userame> exists.

## 5
Create a user in a different home directory in Linux.

```bash
useradd -m <username>
```
providing the option `-m` will create a dedicated home directory for the new user <username>. If this option is not provided then the new user <username> won't have a dedicated home directory(it will be created in the normal home directory).

The user <username> will be create after this command and will be also be registered in /etc/passwd and /etc/group.

We need to assign the new user with a login password otherwise it won't be accessible.

```bash
passwd <username>
```
this command will assign an login password to <username>.

```bash
su - <username>
```
this command will access the new user with <username>.

1. Press ENTER.
2. Enter the password for <username>.
3. You are in the dedicated home directory of <username> and are <username> now.

## 6
Custom home directory for user.

```bash
useradd -m -d <home_directory_location> <username>
```
this command will create the user <username> in <home_directory_location>. Note that <home_directory_location> should exsit.


<p align="center">
&#9678; &#9678; &#9678;
</p>
