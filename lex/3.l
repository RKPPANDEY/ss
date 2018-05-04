%{
#include<stdio.h>
int stack=0,valid=1,operand=0,operator=0;
%}
%%
"(" {stack++;}
")" {stack--; if(stack<0){valid=0;}}
[a-zA-Z][a-zA-Z0-9]* {operand++;printf("%s is an operand\n",yytext);}
[+\-*/] {operator++; printf("%s is an operator\n",yytext);}
"\n" {;}
. {;}
%%
int main()
{
printf("Checking validity of expression....\n");
yyin=fopen("3.txt","r");
yylex();
if(stack==0&&valid==1 && operand-operator==1)
{
printf("Expression is valid\n");
}
else
printf("Invalid expression\n");
return 0;
}
