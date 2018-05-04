%{
#include<stdio.h>
int lines=0,charac=0,spaces=0,words=0,special=0;
%}
%%
"\n" {lines++; words++;}
" "  {words++; spaces++;}
[a-zA-Z0-9] {charac++;}
. {special++;}
%%
int main()
{
yyin=fopen("1.txt","r");
printf("Result is as follows:\n");
yylex();
printf("Lines:%d\n",lines);
printf("Characters:%d\n",charac);
printf("Spaces:%d\n",spaces);
printf("Special Characters:%d\n",special);
printf("Words:%d\n",words);
return 0;
}
