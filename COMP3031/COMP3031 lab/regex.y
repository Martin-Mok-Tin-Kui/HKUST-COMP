%{
#define YYSTYPE int
#include <stdio.h>
%}

%token CHAR

%%
input: /* empty */
    | input line
    ;
line: '\n'
    | expr '\n' { printf("\t%d\n", $1); }
    ;
expr: expr term {$$ = $1 + $2;}
    | term      {$$ = $1;}
    ;
term: unit '?'  {$$ = $1 + 1;}
    | unit '*'  {$$ = $1 + 1;}
    | unit '+'  {$$ = $1 + 1;}
    | unit      {$$ = $1;}
    ;
unit: '(' expr ')' { $$ = $2 + 2; }
    | CHAR      { $$ = 0; }
    ;
%%

int main()
{ 
    return yyparse(); 
}

int yyerror(const char* s)
{ 
    printf("%s\n", s); 
    return 0; 
}
