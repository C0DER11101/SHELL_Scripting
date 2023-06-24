%{
	#include<string.h>
%}

%%
b?- {for(int i=0; i<strlen(yytext); i++)printf("%d:%c\n", i, yytext[i]);}
"exit" {return 0;}
%%

int main(void)
{
	yylex();
	return 0;
}
