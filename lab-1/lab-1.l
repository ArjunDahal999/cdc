
/*Qn1 check_if_the_input_is_number_or_not */

%{
#include<stdio.h>
%}
%%
[0-9]+ {printf("It is a number:%s",yytext);printf("\nenter any character:");}
. {printf("It is not a number:%s",yytext);printf("\nenter any character:");}
%%
int yywrap(){}
main()
{
printf("samrajya\n");
printf("enter any character:");
yylex();
}