%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
int yyerror(char *s);
%}
%token NUMBER NL
%left '+' '-'
%left '*' '/'
%%
st:expr NL {printf("result=%d\n",$1);exit(0);}
;
expr:expr'+'expr {$$=$1+$3;}
	|expr'-'expr {$$=$1-$3;}
	|expr'*'expr {$$=$1*$3;}
	|expr'/'expr {$$=$1/$3;}
	|'('expr')' {$$=$2;}
	|NUMBER	{$$=$1;}
;
%%
int yyerror(char *s)
{
printf("invalid expression\n");
exit(0);
}
int main()
{
printf("Enter the expression: ");
yyparse();
return 0;
}
