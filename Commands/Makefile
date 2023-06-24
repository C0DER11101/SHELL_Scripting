depend=lex.yy.c
run=a.out

$(run): $(depend)
	gcc $(depend) -ll

$(depend): $(f)
	lex $(f)


.PHONY: clean

clean:
	-rm $(run) $(depend)
