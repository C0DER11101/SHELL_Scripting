%{
#include<string.h>
%}

%%
b?a* {for(int i=0; i<strlen(yytext); i++) printf("\n%d : %c\n", i, yytext[i]);}

"exit" {return 0;}
%%


int main(void)
{
	yylex();
	return 0;
}
