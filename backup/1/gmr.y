%{
#include "heading.h"
int yyerror(char *s);
int yylex(void);

extern int yylex();

#include "lex.yy.c"  // to get the token types from Bison

%}

%start	program

%token	<int_val>	INTEGER_LITERAL
%type	<int_val>	exp
%left	PLUS
%left	MULT

%%
program 		: begin statements end ;

statements 		: statement 
				| statement SEMICOLON statements ;

statement 		: if_statement ;

if_statement 	: if condition then statement ;

condition 		: boolVal ;

boolVal 		: TRUE | FALSE ;
%%

int yyerror(string s)
{
  extern int yylineno;	// defined and maintained in lex.c
  extern char *yytext;	// defined and maintained in lex.c
  
  cerr << "ERROR: " << s << " at symbol \"" << yytext;
  cerr << "\" on line " << yylineno << endl;
  exit(1);
}

int yyerror(char *s)
{
  return yyerror(string(s));
}
