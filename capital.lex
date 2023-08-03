%{
	#include<stdio.h>
%}
%%
[A-Z]+[\t\n ] { printf("%s",yytext); }
.  ;
%%
main( ) 
{
	printf("Enter some string with capital words in between\n");
	yylex();
}
int yywrap( )
{
	return 1;
}
******************************************************************************************************************
Output:
C:\Users\harsh>set path=C:\Program Files (x86)\GnuWin32\bin
C:\Users\harsh>flex capital.l.txt
C:\Users\harsh>set path=C:\MinGW\bin
C:\Users\harsh>gcc lex.yy.c
C:\Users\harsh>a
 enter input:saihethwick
SAIHETHWICK
