/*Qn_5 simple lexical analyzer (lexer) that converts lowercase letters to 
uppercase .  */
%{
#include <stdio.h>
#include <ctype.h>
%}

%%
[a-z] { printf("%c", toupper(yytext[0])); }
.     { ECHO; } 
%%

int main() {
    char input[100];
    printf("Enter a string: ");
    if (fgets(input, sizeof(input), stdin) == NULL) { 
        printf("Error reading input\n");
        return 1;
    }
    yy_scan_string(input); // Scan the input string
    yylex(); // Perform lexical analysis
    return 0;
}

int yywrap() {
    return 1; // Return 1 to indicate end of input
}
