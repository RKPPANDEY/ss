%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
int yyerror(char *s);
%}
%token NUMBER LETTER UND NL
%%
stmt:var NL {printf("valid\n"); exit(9);}
;
var:LETTER alpha
;
alpha:LETTER alpha
	|NUMBER alpha
	|UND alpha
	|LETTER
	|NUMBER
	|UND
;
%%
int yyerror(char *s)
{
printf("invalid\n");
exit(0);
}
int main()
{
printf("Enter a String:");
yyparse();
return 0;
}
