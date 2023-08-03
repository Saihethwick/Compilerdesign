%{
int v=0;
int c=0;
%}
%%
[aeiouAEIOU] {v++;printf("\n %s is a vowel\n",yytext);}
[a-zA-Z] {c++;printf("\n%s is a consonant\n",yytext);}
%%
int yywrap(void){}
int main()
{
printf("\nenter : ");
yylex();
printf("\nvowels are:%d,""\nconsonants are:%d",v,c);
return 0;
}
****************************************************************************************************************************************
Output:
C:\Users\harsh>set path=C:\Program Files (x86)\GnuWin32\bin
C:\Users\harsh>flex conso.l.txt
C:\Users\harsh>set path=C:\MinGW\bin
C:\Users\harsh>gcc lex.yy.c
C:\Users\harsh>a
enter : hihello
h is a consonant
h is a consonant
l is a consonant
l is a consonant
