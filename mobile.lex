%{
%}
%%
[6-9][0-9]{9} {printf("\n mobile number valid");}
.+ {printf("\n mobile number invalid");}
%%
int yywrap(void){}
int main()
{
printf("\n enter number");
yylex();
printf("\n");
return 0;
}
******************************************************************************************************
Output:

C:\Users\harsh>set path=C:\Program Files (x86)\GnuWin32\bin
C:\Users\harsh>flex mobile.l.txt
C:\Users\harsh>set path=C:\MinGW\bin
C:\Users\harsh>gcc lex.yy.c
C:\Users\harsh>a
 enter number7416618479
 mobile number valid
