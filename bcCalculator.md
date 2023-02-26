# The `bc` calculator

\<Source link $\rightarrow$ [Source](https://www.youtube.com/watch?v=B5HrLg2gu9o)\>

* To initiate `bc`, type: `bc` in the command line.


<img src="https://user-images.githubusercontent.com/96164229/221396766-8f499689-8e07-462d-a4f3-dd976a6e2ccf.png" width="60%" height="60%">


It supports all the arithmetical operators.

We can also initialize variables here.


<img src="https://user-images.githubusercontent.com/96164229/221397660-0a69bc7e-51a2-4547-88bb-b1df22b63270.png" width="134" height="267">


We can also use relational operators and increment and decrement operators.

## Increment operator.

In the image below, you can see the post increment operator and the pre increment operators.

<img src="https://user-images.githubusercontent.com/96164229/221397798-f4c71ed0-34b7-4c30-be25-8a48951687d6.png" width="233" height="318">

Notice, when we did `a++` then after pressing enter it showed us the value `10`, which was a's previous value, then when we again typed `a` then this time it showed `11`. This actually happened because we used the post-increment operator.

The post-increment operator basically means *first use the value, then increment it.*

But when we did `++a` it immediately showed us `12`. That's because we used the pre-increment operator.

The pre-increment operator basically means *first increment the value, then use it.*


**Same thing will happen with post-decrement operator and pre-decrement operator.**

## Decrement operator.

<img src="https://user-images.githubusercontent.com/96164229/221397982-e2c1bb3e-6458-44e4-aad9-df275485c762.png" width="246" height="261">


## Relational operators.

The image below shows the relational operators.

<img src="https://user-images.githubusercontent.com/96164229/221398078-bc44f967-a461-4769-b120-41fcf5d83c99.png" width="142" height="349">


In `bc` any non-zero value is considered as true and 0 is considered as false.


## Logical operators.

### Logical AND

<img src="https://user-images.githubusercontent.com/96164229/221398227-8a9b3638-84b3-441b-aa84-d3a7fc03bfc2.png" width="158" height="270">


### Logical OR

<img src="https://user-images.githubusercontent.com/96164229/221398270-7bf3aedf-88c0-47c5-8680-8323e17fb95d.png" width="209" height="287">

## Assignment operators

<img src="https://user-images.githubusercontent.com/96164229/221398340-c6096d60-e074-49fd-a128-dcf9b85c4f80.png" width="248" height="462">


There is a variable called `last` in `bc` which tells us the most recent value.

<img src="https://user-images.githubusercontent.com/96164229/221398433-cfb770c1-9609-43d4-ae6e-7b3e20cc1823.png" width="176" height="272">

Here `last` is `19` which was the value of `a` after it was added to `9`, that was the most recent value used.

We can also perform arithmetic operations with `last`.


`bc` command also supports maths library. To load the maths library, we have to use `-l` with `bc` like this:

```bash
bc -l
```

Now, if we want to use the $sin$ function then we have to write what is shown below:

```bc
s(1)
```
`1` is in radians.

<img src="https://user-images.githubusercontent.com/96164229/221399425-0284aa37-921b-44ba-858f-d1ee06494be6.png" width="327" height="106">

For $cosine$

```bc
c(1)
```

<img src="https://user-images.githubusercontent.com/96164229/221401024-c69b7a20-9db2-4f4b-b3e7-775e76c00d93.png" width="330" height="92%">


For $log$

```bc
l(23)
```

<img src="https://user-images.githubusercontent.com/96164229/221401079-acac7431-34e2-4df5-920f-c11306ecf5a8.png" width="328" height="100%">

Exponentiation

```bc
e(2)
```

<img src="https://user-images.githubusercontent.com/96164229/221401209-58cf1f53-498c-4c3f-8de8-8e32ea53650a.png" width="434" height="111">

Square root

```bc
sqrt(25)
```

<img src="https://user-images.githubusercontent.com/96164229/221401242-98762345-37f7-4164-af05-32d22684a576.png" width="375" height="104">


Finding length of a number:

```bc
length(123456)
```

<img src="https://user-images.githubusercontent.com/96164229/221401289-da4f0249-0c09-461b-9f15-8a0ec4e501bd.png" width="292" height="108">

Manipulating number digits to be displayed after the deimal point.

>For this we use the scale command.

```bc
scale=2
sqrt(16)
```

<img src="https://user-images.githubusercontent.com/96164229/221401365-1bebe3da-1b34-4f28-8a26-12a6ef4b5472.png" width="192" height="146">

## Changing base in `bc`

>By default the base is 10 in `bc`.

There is a variable called `obase`(output base) in `bc` which has 10(decimal) as its value. That means whatever operations we perform with the numbers all will performed in base 10 i.e. decimal.

Values that `obase` can take:

* `2` $\rightarrow$ binary
* `8` $\rightarrow$ octal
* `10` $\rightarrow$ decimal
* `16` $\rightarrow$ hexadecimal


Let's say we set `obase` to `16` i.e. hexadecimal.

The image shows what will happen:

<img src="https://user-images.githubusercontent.com/96164229/221401613-72f57a68-a01a-48db-a528-4d73068c63d9.png" width="248" height="463">

So that means everytime we enter a decimal number `bc` will show us its hexadecimal equivalent!!

We can also perform arithmetic operations:

<img src="https://user-images.githubusercontent.com/96164229/221401659-ba6a2501-651c-499f-9baf-5338df7f627c.png" width="179" height="120">

Similarly, when `obase=2`

<img src="https://user-images.githubusercontent.com/96164229/221401724-556ce647-fecb-404b-98f9-43da225cc6ec.png" width="355" height="352">

Now, that was all about when input was in decimal and output was in either in binary or hexadecimal or octal or decimal.

Now, the input will be either in decimal or in binary or in octal or in hexadecimal and the output will be also be either in decimal or binary or hexadecimal or octal.


For changing the base of the input, we have to change the value of a variable called `ibase`(input base which can store all those values that `obase` can store).


<img src="https://user-images.githubusercontent.com/96164229/221401977-742c240f-85c7-4c52-ab81-a6aaf18550ea.png" width="216" height="282">

In the image we have changed `ibase` to `16`(hexadecimal) and `obase` to `2`(binary) that means that input will be in hexadecimal and the output will be in the equivalent binary. So that's why for every hexadecimal input an equivalent binary output is produced!!


## Programming features that can be used with `bc`

### if else in `bc`

<img src="https://user-images.githubusercontent.com/96164229/221402821-94dcb4ef-e31f-4d04-93d1-9e6066e8af86.png" width="513" height="143">

It's pretty clear how this if-else is going to work in `bc`.

Another if-else in `bc`:

<img src="https://user-images.githubusercontent.com/96164229/221403015-29621244-3424-4438-bfa4-1206ae803955.png" width="542" height="188">

### for loop and while loops in `bc`

>for loops

<img src="https://user-images.githubusercontent.com/96164229/221403240-fb2d47ce-1487-45cb-ba29-4b482b72a4b4.png" width="462" height="366">

It's similar to C for loops!!

>while loops

<img src="https://user-images.githubusercontent.com/96164229/221403461-2fe25987-0ffc-4de5-85e9-36570fe795f8.png" width="346" height="437">


### Functions in `bc`
>To define any function in `bc`, we use `define` and then the name of the function.

<img src="https://user-images.githubusercontent.com/96164229/221403628-a2d04227-4777-4050-b4d0-065376c116ab.png" width="378" height="193">

Notice the `0` at the end in the image, it's actually the return value of `add()`, it returns 0.

We can manipulate the return value of a function by adding a `return <something>` line at the end of the function definition.

<img src="https://user-images.githubusercontent.com/96164229/221403735-8d6fcc0e-ee80-4770-b915-238305315394.png" width="548" height="229">

We added `return 2` at the end of the definition of `mult()` and so we see `2` at the end.

In place of `return` we can also use `break`, `continue`, or `quit`.


### Taking input from the output of another command

<img src="https://user-images.githubusercontent.com/96164229/221404043-173ffd9a-0e71-4261-8a54-d27505b3a16a.png" width="1453" height="63">

`echo "a=10; a*20"` will produce the output `a=10; a*20` and `echo "a=10; a*20" | bc ` will send the output of `echo` to `bc`. So we get the output to be `200`. `bc` does the calculation `a=10; a*20` which produces `200`.

We can also put `if-else` statements like this:

<img src="https://user-images.githubusercontent.com/96164229/221404275-861f37a1-b7ff-4126-8d5d-a3233698dc33.png" width="1821" height="77">


### `bc` executes files

We created a file named: [mathsop](https://github.com/C0DER11101/SHELL_Scripting/blob/ShellScript/mathsop).

We entered some commands that `bc` could execute and then basically made `bc` to execute the commands of the file and the output below was generated:

**Output:**

<img src="https://user-images.githubusercontent.com/96164229/221405330-71754a38-525e-451a-9060-a90169ed104d.png" width="441" height="201">


Notice that when we type `bc` in the command line and press enter then we get some output like speaking about the version of `bc` and its warranty information:

<img src="https://user-images.githubusercontent.com/96164229/221396766-8f499689-8e07-462d-a4f3-dd976a6e2ccf.png" width="60%" height="60%">

If we wish to hide this then we just to type `bc -q`

<img src="https://user-images.githubusercontent.com/96164229/221405569-148930a0-a1b4-4d2c-ae19-5ea57207aae0.png" width="1320" height="257">

`bc -q mathsop` will just show the output this time, no information about version or warranty will be shown about `bc`.

If we donot wish to quit `bc` by typing `quit` there manually then we can type the `quit` instruction in the file `mathsop`, that way when we run `bc -q mathsop` then it will show us the output and quit automatically.


---
