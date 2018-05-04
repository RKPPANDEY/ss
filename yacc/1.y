%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
int yyerror(char *s);
%}
%token NUMBER NUMBERS ID NL
%left '+' '-'
%left '*' '/'
%%
st:expr NL {printf("valid expression");exit(0);}
;
expr:expr'+'expr
	|expr'-'expr
	|expr'*'expr
	|expr'/'expr
	|'('expr')'
	|NUMBERS
	|NUMBER
	|ID
;
%%
int yyerror(char *s)
{
printf("Invalid expression\n");
exit(0);
}
int main()
{
printf("Enter expression:");
yyparse();
return 0;
}
