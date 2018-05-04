%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
int yyerror(char *s);
%}
%token A B NL
%%
S: C D NL {printf("valid string\n");exit(0);}
C: A C |
D: B D |
;
%%
int yyerror(char *s)
{
printf("invalid string\n");
exit(0);
}
int main()
{
printf("Enter string:");
yyparse();
return 0;
}
