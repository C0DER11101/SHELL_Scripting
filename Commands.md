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


<p align="center">
&#9678; &#9678; &#9678;
</p>
