/* CS 155 Flex Demo     						*/
/* cs155demo.flex								*/
/* This is meant to demonstrate a simple flex program */
/* V2 13-Feb-2024 spfestin						*/
/* V1 23-Feb-2022 spfestin 						*/
/* Note: This is for class demo purposes only 	*/

%option noyywrap

%{
#include <stdio.h>
#include <stdlib.h>
int lineno = 1;
void ret_print(char *token_type);
void yyerror();
%}

PROCEDURE	      PROCEDURE
VAR 		         VAR
INTEGER           INTEGER
REAL              REAL
BOOLEAN           BOOLEAN
STRING            STRING
WRITELINE         WRITELN
SIGN		         [\+-]
NOT		         NOT
EQ		            =
NEQ               <>
LT                <
LEQ               <=
GT                >
GEQ               >=
PLUS              \+
MINUS             -
OR                OR
TIMES             \*
DIVIDE            \/
DIV               DIV
MOD               MOD
AND               AND
ASSIGNMENT        :=
DIGIT		         [0123456789]
INTEGER_NUMBER    ([0-9]+)
REAL_NUMBER	      ([0-9]+)(\.)([0-9]*)
LETTER   	      [a-zA-Z]
COLON             :
COMMA             ,
SEMICOLON         ;
PERIOD            \.
OPEN_PAREN        \(
CLOSE_PAREN       \)
QUOTE             \"
IF		            IF
THEN		         THEN
ELSE		         ELSE
WHILE		         WHILE
DO		            DO  
FOR		         FOR
TO                TO 
DOWNTO            DOWNTO
BEGIN		         BEGIN
END		         END
IDENTIFIER        {LETTER}({LETTER}|{DIGIT})*
CHAR              [^"]
STRING_TEXT       \"{CHAR}+\" 

%%
"\n"         	   { lineno++; }

   /* reserved keywords */
{PROCEDURE}       { ret_print("PROCEDURE"); }
{VAR}             { ret_print("VAR"); }
{WRITELINE}       { ret_print("WRITELINE"); }
{IF}              { ret_print("IF"); }
{THEN}            { ret_print("THEN"); }
{ELSE}            { ret_print("ELSE"); }
{WHILE}           { ret_print("WHILE"); }
{DO}              { ret_print("DO"); }
{FOR}             { ret_print("FOR"); }
{TO}              { ret_print("TO"); }
{DOWNTO}          { ret_print("DOWNTO"); }
{BEGIN}           { ret_print("BEGIN"); }
{END}             { ret_print("END"); }

   /* data types */
{INTEGER}         { ret_print("INTEGER"); }
{REAL}            { ret_print("REAL"); }
{BOOLEAN}         { ret_print("BOOLEAN"); }
{STRING}          { ret_print("STRING"); }

   /* relation operators */
{EQ}              { ret_print("="); }
{NEQ}             { ret_print("<>"); }
{LT}              { ret_print("<"); }
{LEQ}             { ret_print("<="); }
{GT}              { ret_print(">"); }
{GEQ}             { ret_print(">="); }

   /* addition operators */
{PLUS}            { ret_print("+"); }
{MINUS}           { ret_print("-"); }
{OR}              { ret_print("OR"); }

   /* multiplication operators */
{TIMES}           { ret_print("*"); }
{DIVIDE}          { ret_print("/"); }
{DIV}             { ret_print("DIV"); }
{MOD}             { ret_print("MOD"); }
{AND}             { ret_print("AND"); }

   /* NOT operator */
{NOT}             { ret_print("NOT"); }

   /* assignment operator */
{ASSIGNMENT}      { ret_print(":="); }

   /* literals */
{INTEGER_NUMBER}  { ret_print("INTEGER_NUMBER"); }
{REAL_NUMBER}     { ret_print("REAL_NUMBER"); }
{STRING_TEXT}     { ret_print("STRING_TEXT"); }

   /* special characters */
{COLON}           { ret_print(":"); }
{COMMA}           { ret_print(","); }
{SEMICOLON}       { ret_print(";"); }
{PERIOD}          { ret_print("."); }
{OPEN_PAREN}      { ret_print("("); }
{CLOSE_PAREN}     { ret_print(")"); }
{QUOTE}           { ret_print("\""); }

   /* identifier */
{IDENTIFIER}      { ret_print("IDENTIFIER"); }

[ \t\r\f]+	      /* eat up whitespace */
.                 { yyerror("lexical error"); }
%%

void ret_print(char *token_type){
   printf("L%d: [%s, %s]\n", lineno, token_type, yytext);
}

void yyerror(char *message){
   printf("L%d: %s %s\n", lineno, message, yytext);
}

int main(int argc, char *argv[]){
   yyin = fopen(argv[1], "r");	// open file
   yylex(); // function for scanner
   fclose(yyin); // close file pointer
   return 0;
}
