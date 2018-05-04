%{
#include<stdio.h>
int count=0;
%}
%%
"/*"[^("*/")]+"*/" {count++;}
"//"	{count++;}
"\n"	{;}
.	{;}
%%
int main()
{
printf("Counting number of comments in the given text....\n");
yyin=fopen("2.txt","r");
yylex();
printf("%d\n",count);
return 0;
}
