# Very Important To Detect File Extensions!!
_Got this valuable information from here [stackoverflow](https://stackoverflow.com/questions/407184/how-to-check-the-extension-of-a-filename-in-a-bash-script "StackOverflow")_
```bash
if [ "${FILE##*.}" = "txt" ]
then
# operation for txt files here
fi
```
