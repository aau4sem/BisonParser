%{
#include "heading.h"
#include "tok.h"
int yyerror(char *s);
int yylineno = 1;
#include "gmr.tab.h"  // to get the token types from Bison

%}

digit		[0-9]
int_const	{digit}+

%%
";"			TOKEN(SEMICOLON)
"true"		TOKEN(TRUE)
"false"		TOKEN(FALSE)
if			TOKEN(if)
then		TOKEN(then)
begin		TOKEN(begin)
end			TOKEN(end)
%%