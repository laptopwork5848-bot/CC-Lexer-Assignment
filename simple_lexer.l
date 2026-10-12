
%option noyywrap

%{
#include <stdio.h>
%}

%%

"start"                 { printf("KEYWORD: %s\n", yytext); }
"end"                   { printf("KEYWORD: %s\n", yytext); }
"let"                   { printf("KEYWORD: %s\n", yytext); }
"show"                  { printf("KEYWORD: %s\n", yytext); }
"if"                    { printf("KEYWORD: %s\n", yytext); }
"int"                    { printf("KEYWORD: %s\n", yytext); }
"else"                   { printf("KEYWORD: %s\n", yytext); }

\"[^\"]*\"              { printf("STRING: %s\n", yytext); }

"<="                    { printf("RELATIONAL OPERATOR: %s\n", yytext); }
"="                     { printf("ASSIGNMENT OPERATOR: %s\n", yytext); }
"+"                     { printf("OPERATOR: %s\n", yytext); }
"*"                     { printf("OPERATOR: %s\n", yytext); }

";"                     { printf("SEMICOLON: %s\n", yytext); }
"{"                     { printf("LEFT BRACE: %s\n", yytext); }
"}"                     { printf("RIGHT BRACE: %s\n", yytext); }
"("                     { printf("LEFT PARENTHESIS: %s\n", yytext); }
")"                     { printf("RIGHT PARENTHESIS: %s\n", yytext); }

[0-9]+                  { printf("NUMBER: %s\n", yytext); }

[a-zA-Z_][a-zA-Z0-9_]*  { printf("IDENTIFIER: %s\n", yytext); }

[ \t\r\n]+              { /* Ignore whitespace */ }

.                       { printf("UNKNOWN CHARACTER: %s\n", yytext); }

%%

int main(void)
{
    printf("Enter Tiny Language code:\n");
    printf("Press Ctrl+Z then Enter when finished.\n");
    yylex();
    return 0;
}
