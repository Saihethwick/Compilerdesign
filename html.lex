%{
#include<stdio.h>
%}

%%
\<[^>]*\> fprintf(yyout,"%s\n",yytext);
.|\n;

%%

int yywrap()
{
return 1;
}

int main()
{
yyin=fopen("C:\\Users\\P Sai vinitha\\h.html","r");
yyout=fopen("output.txt","w");
yylex();
return 0;
}
