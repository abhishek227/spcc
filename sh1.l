%{
#include "y.tab.h"
extern int yylval;
%}
%%
((_[a-z]|_[A-Z]|_[0-9])|([a-z]|[A-Z]))+(_|[a-z]|[A-Z]|[0-9])*  return var1;
.	return yytext[0];
\n	return 0;
%%
