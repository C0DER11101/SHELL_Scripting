# break
>Used to terminate a loop.

* [t22](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/t22)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/239955785-b7629ecf-0d30-4bc7-89ef-ef5e8580ba01.png" width="60%" height="60%">

# break n
>This can be used in nested loops. `break n` will terminate from the $n^{th}$ enclosing loop. By default, `n` is 1.

* [t23](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/t23)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/239955903-45980245-f9ef-4a15-9fbb-e6e71080b59b.png" width="60%" height="60%">

# continue
>Used to move to the next iteration.

* [t24](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/t24)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/239957318-ce559db7-9528-4c73-b276-6c8097f3b5ae.png" width="60%" height="60%">

# continue n
>This can be used in nested loops. `continue n` will continue to $n^{th}$ enclosing loop. By default, `n` is 1.

* [t25](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/t25)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/239957427-8da5c645-9bb6-4269-aef7-752ac8dbe40f.png" width="60%" height="60%">

**Here we get an infinite loop.**

<details>
<summary>Very important</summary>
If there are only two loops(one nested into another) and say you wrote a statement `break 5`; now `break 5` means terminate from the $5^{th}$ loop but there is no $5^{th}$ loop here, there are only 2 loops, so even though you wrote `break 5` it will be treated as `break 2`.

* [t26](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/tests/t26)

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/239957825-481dff8d-fb03-4df4-8bef-9800d7902cf3.png" width="60%" height="60%">
</details>

<p align="center">
&#9678; &#9678; &#9678;
</p>
