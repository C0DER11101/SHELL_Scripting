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

The `fi` is like [`#endif` in C ](https://github.com/C0DER11101/CPrograms/blob/CProgramming/CPreprocessors/TheDirectives.md#5-if-and-endif) because it terminates the `if` in shell scripting just like `#endif` terminates `#if`.


### Variation 2

```bash
if <condition>
then
	statement1
	statement2
	...
else
	statement3
	statement4
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
		statement3
		statement4
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
	statement3
	statement4
	...

fi
```

### Variation 4

```bash
if <condition>
then
	statement1
	statement2
	...
else
	if <condition>
	then
		statement3
		statement4
		...
	else
		statement5
		statemetn6
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
elif
then
	statement3
	statement4
	...
else
	statement5
	statement6
	...
fi
```


---
