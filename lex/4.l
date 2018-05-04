%{
#include<stdio.h>
int count=0;
%}
%%
[a-zA-Z_][a-zA-Z0-9]* {count++; printf("%s is a valid identifier\n",yytext);}
"\n" {;}
. {;}
%%
int main()
{
printf("Counting identifier\n");
yyin=fopen("4.txt","r");
yylex();
printf("number of identifies are:%d\n",count);
return 0;
}
