# The `bc` calculator

\<Source link $\rightarrow$ [Source](https://www.youtube.com/watch?v=B5HrLg2gu9o)\>

* To initiate `bc`, type: `bc` in the command line.


<img src="https://user-images.githubusercontent.com/96164229/221396766-8f499689-8e07-462d-a4f3-dd976a6e2ccf.png" width="60%" height="60%">


It supports all the arithmetical operators.

We can also initialize variables here.


<img src="https://user-images.githubusercontent.com/96164229/221397660-0a69bc7e-51a2-4547-88bb-b1df22b63270.png" width="60%" height="60%">


We can also use relational operators and increment and decrement operators.

## Increment operator.

In the image below, you can see the post increment operator and the pre increment operators.

<img src="https://user-images.githubusercontent.com/96164229/221397798-f4c71ed0-34b7-4c30-be25-8a48951687d6.png" width="60%" height="60%">

Notice, when we did `a++` then after pressing enter it showed us the value `10`, which was a's previous value, then when we again typed `a` then this time it showed `11`. This actually happened because we used the post-increment operator.

The post-increment operator basically means *first use the value, then increment it.*

But when we did `++a` it immediately showed us `12`. That's because we used the pre-increment operator.

The pre-increment operator basically means *first increment the value, then use it.*


**Same thing will happen with post-decrement operator and pre-decrement operator.**

## Decrement operator.

<img src="https://user-images.githubusercontent.com/96164229/221397982-e2c1bb3e-6458-44e4-aad9-df275485c762.png" width="60%" height="60%">


## Relational operators.

The image below shows the relational operators.

<img src="https://user-images.githubusercontent.com/96164229/221398078-bc44f967-a461-4769-b120-41fcf5d83c99.png" width="60%" height="60%">


In `bc` any non-zero value is considered as true and 0 is considered as false.


## Logical operators.

### Logical AND

<img src="https://user-images.githubusercontent.com/96164229/221398227-8a9b3638-84b3-441b-aa84-d3a7fc03bfc2.png" width="60%" height="60%">


### Logical OR

<img src="https://user-images.githubusercontent.com/96164229/221398270-7bf3aedf-88c0-47c5-8680-8323e17fb95d.png" width="60%" height="60%">

## Assignment operators

<img src="https://user-images.githubusercontent.com/96164229/221398340-c6096d60-e074-49fd-a128-dcf9b85c4f80.png" width="60%" height="60%">


There is a variable called `last` in `bc` which tells us the most recent value.

<img src="https://user-images.githubusercontent.com/96164229/221398433-cfb770c1-9609-43d4-ae6e-7b3e20cc1823.png" width="60%" height="60%">

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

<img src="https://user-images.githubusercontent.com/96164229/221399425-0284aa37-921b-44ba-858f-d1ee06494be6.png" width="60%" height="60%">

For $cosine$

```bc
c(1)
```

<img src="https://user-images.githubusercontent.com/96164229/221401024-c69b7a20-9db2-4f4b-b3e7-775e76c00d93.png" width="60%" height="60%">


For $log$

```bc
l(23)
```

<img src="https://user-images.githubusercontent.com/96164229/221401079-acac7431-34e2-4df5-920f-c11306ecf5a8.png" width="60%" height="60%">

Exponentiation

```bc
e(2)
```

<img src="https://user-images.githubusercontent.com/96164229/221401209-58cf1f53-498c-4c3f-8de8-8e32ea53650a.png" width="60%" height="60%">

Square root

```bc
sqrt(25)
```

<img src="https://user-images.githubusercontent.com/96164229/221401242-98762345-37f7-4164-af05-32d22684a576.png" width="60%" height="60%">


Finding length of a number:

```bc
length(123456)
```

<img src="https://user-images.githubusercontent.com/96164229/221401289-da4f0249-0c09-461b-9f15-8a0ec4e501bd.png" width="60%" height="60%">

Manipulating number digits to be displayed after the deimal point.

>For this we use the scale command.

```bc
scale=2
sqrt(16)
```

<img src="https://user-images.githubusercontent.com/96164229/221401365-1bebe3da-1b34-4f28-8a26-12a6ef4b5472.png" width="60%" height="60%">

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

<img src="https://user-images.githubusercontent.com/96164229/221401613-72f57a68-a01a-48db-a528-4d73068c63d9.png" width="60%" height="60%">

So that means everytime we enter a decimal number `bc` will show us its hexadecimal equivalent!!

We can also perform arithmetic operations:

<img src="https://user-images.githubusercontent.com/96164229/221401659-ba6a2501-651c-499f-9baf-5338df7f627c.png" width="60%" height="60%">

Similarly, when `obase=2`

<img src="https://user-images.githubusercontent.com/96164229/221401724-556ce647-fecb-404b-98f9-43da225cc6ec.png" width="60%" height="60%">

Now, that was all about when input was in decimal and output was in either in binary or hexadecimal or octal or decimal.

Now, the input will be either in decimal or in binary or in octal or in hexadecimal and the output will be also be either in decimal or binary or hexadecimal or octal.


For changing the base of the input, we have to change the value of a variable called `ibase`(input base which can store all those values that `obase` can store).


<img src="https://user-images.githubusercontent.com/96164229/221401977-742c240f-85c7-4c52-ab81-a6aaf18550ea.png" width="60%" height="60%">

In the image we have changed `ibase` to `16`(hexadecimal) and `obase` to `2`(binary) that means that input will be in hexadecimal and the output will be in the equivalent binary. So that's why for every hexadecimal input an equivalent binary output is produced!!


## Programming features that can be used with `bc`


---
