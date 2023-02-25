# Adding user to the system
To add a user to the system, we use the `adduser` command along with `sudo`.

Syntax:
```bash
sudo adduser <username>
```

Example:

```bash
sudo adduser hello10
```
This command will add a new user with the name "hello10" to the system.


**Image:**

<img src="https://user-images.githubusercontent.com/96164229/221342896-9f9a4497-50b6-42ed-bf28-c30a632f3d44.png" width="60%" height="60%">

**New user created:**

<img src="https://user-images.githubusercontent.com/96164229/221342905-8bb406a3-1262-49a6-96c5-6815e9daa99b.png" width="60%" height="60%">

Now, if we are writing a script to do the same, we donot want to be prompted everytime for entering full username, room no, etc...

So in that case, we can use this command:

```bash
sudo adduser <username> --gecos "username, roomno, workphone, homephone, other"
```

**Image:**

<img src="https://user-images.githubusercontent.com/96164229/221343299-ef76fb3e-1cc3-452e-8136-cb1f98bf42e6.png" width="60%" height="60%">

`--gecos` just allows us to enter the fullname, roomno, etc..(basically the new user details) in the same line along `adduser` command(as shown in the image above).


**New user created:**

<img src="https://user-images.githubusercontent.com/96164229/221343327-fd23d897-8f40-4989-93d3-c46c39d253cd.png" width="60%" height="60%">


Now, say, we also don't want to be prompted to enter password either. In that case, we can use this command:

```bash
sudo adduser --disabled-password <username> --gecos "username, roomno, workphone, homephone, other"
```


**Image:**

<img src="https://user-images.githubusercontent.com/96164229/221343565-1fa75b10-a9f3-4dca-992c-5d81875b7dd8.png" width="60%" height="60%">

**New user created:**

<img src="https://user-images.githubusercontent.com/96164229/221343571-c36a653e-98c5-46f5-945c-6ccc05151c3d.png" width="60%" height="60%">

Now, we don't want the output to be shown to us, like it's shown in the image below:

<img src="https://user-images.githubusercontent.com/96164229/221344091-80a08fe1-fd95-4e31-998a-90701719fdc0.png" width="60%" height="60%">

We just have to redirect the output of the command to `/dev/null`:

<img src="https://user-images.githubusercontent.com/96164229/221344171-7c076241-68a1-4aa1-b832-877809d95e9f.png" width="60%" height="60%">

**New user created:**

<img src="https://user-images.githubusercontent.com/96164229/221344455-fc869d7d-c733-44d8-baea-3ecfd04d084b.png" width="60%" height="60%">

Now, since we created some users by disabling the password using `--disabled-password` option, we have to change the password of those users, so for that we can use this command:
```bash
sudo chpasswd
```
Press "enter" and then you have to enter the username for whom you want to change the password. Put a colon after the username and then type the password. Type the username that you used with the `adduser` command.

**Image:**

<img src="https://user-images.githubusercontent.com/96164229/221344941-dd94b040-0987-4637-b62a-1876f0a8f8bd.png" width="60%" height="60%">

Example:

To change the password of user `Hello13` you will have to type: `hello13:hello`, where `hello13` is the username that we used with `adduser` command. **Don't use the full name in place of the username. It will throw an error.**

**ERROR:**

<img src="https://user-images.githubusercontent.com/96164229/221344962-3cbca274-aa1e-4ff1-8b3d-3d1f6064dd1a.png" width="60%" height="60%">


Now, if we login with user `Hello13`:
```bash
su -l hello13
```
then we will have to enter the password that we set for user `hello13`.


There is an equivalent command to `sudo chpasswd`:

```bash
echo "hello12:hello121" | chpasswd
```

We send the output to the standard input to `chpasswd` command. This method will be used in shell scripting.


Script: [userCheck](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/userCheck).

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/221348419-4e47c3c1-fc3e-49e7-8710-3421455ea138.png" width="60%" height="60%">

**Note**

while running `userCheck` we need to provide `sudo` before it as shown in the image above because `adduser` command requires sudo privileges to run. *But* note that if you provide `sudo` before `adduser` command in `userCheck` as:
```bash
sudo adduser --disables-password ${REPLY} --gecos ""
```

it's still going to need sudo privileges to run. So run `userCheck` as:
```bash
sudo ./userCheck
```


---
