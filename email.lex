%{
%}
%%
[a-z A-z 0-9 _]+"@"[a-z]+".com" {printf("\nvalid email\n");}
.+ {printf("\ninvalid email\n");}
%%
int yywrap(void){}
int main()
{
printf("\nenter email : ");
yylex();
printf("\n");
return 0;
}
***************************************************************************************************
Output:
C:\Users\harsh>set path=C:\Program Files (x86)\GnuWin32\bin
C:\Users\harsh>flex email.l.txt
C:\Users\harsh>C:\MinGW\bin
C:\Users\harsh>set path=C:\MinGW\bin
C:\Users\harsh>gcc lex.yy.c
C:\Users\harsh>a
enter the mail:harshithareddy2122@gmail.com
it is valid
enter the mail:bts@gmail.com
it is not valid
