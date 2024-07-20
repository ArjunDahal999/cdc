/*Qn_6 lexical analyzer (lexer) that counts the number of vowels and consonants in a given input string. */
%{
#include <stdio.h>
int vowels = 0;      
int consonants = 0;   
%}

%%
[aeiouAEIOU] { vowels++; }       
[a-zA-Z] { consonants++; }      
.|\n { /* Ignore other characters */ }
%%

int main() {
    char input[100];
    printf("Enter a string: ");
    if (fgets(input, sizeof(input), stdin) == NULL) { 
        printf("Error reading input\n");
        return 1;
    }
    yy_scan_string(input); 
    yylex(); 
    printf("Number of vowels: %d\n", vowels);
    printf("Number of consonants: %d\n", consonants); 
