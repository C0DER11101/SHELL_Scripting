# if else in shell scripting

**Variations**


### Variation 1

```bash
if <condition>
then
	statement1
	statement2
	...
fi
```

The commands are written `<condition>`, if the exit status code of the command is 0 then it will be taken as true otherwise it will be taken as false.

The `fi` is like [`#endif`](https://github.com/C0DER11101/CPrograms/blob/CProgramming/CPreprocessors/TheDirectives.md#5-if-and-endif) in C because it terminates the `if` in shell scripting just like `#endif` terminates `#if`.


### Variation 2

```bash
if <condition>
then
	statement1
	statement2
	...
else
	statement1
	statement2
	...
fi
```

These are same as C if-else conditionals!!


### Variation 3
>Nested if-else

```bash

if <condition>
then
	statement1
	statement2
	...
else
	if <condition>
	then
		statement1
		statement2
		...
	fi

fi
```

The above variation can also be written as:

```bash

if <condition>
then
	statement1
	statement2
	...
elif <condition>
then
	statement1
	statement2
	...

fi
```


---
