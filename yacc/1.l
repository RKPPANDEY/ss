%{
#include "y.tab.h"
%}
%%
[0-9]+[\.[0-9]+]? {return NUMBERS;}
[0-9]+ {return NUMBER;}
[_a-zA-Z][a-zA-Z_]* {return ID;}
[\n] {return NL;}
. {return yytext[0];}
%%
