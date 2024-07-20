/*  lex program that counts the no of lines and character present in the input.txt */

%{
#include <stdio.h> // Corrected include directive from <studio.h> to <stdio.h>
int n_char = 0; // Initialize character counter
int n_lines = 0; // Initialize line counter
%}

%%

\n { ++n_lines; ++n_char; } // Increment both line and character counters for each newline character
. { ++n_char; } // Increment character counter for every other character

%%

int yywrap() { // Function to indicate the end of input
    return 1;
}

int main(int argc, char *argv[]) {
    printf("Manjila Shakya\n");
    yyin = fopen("input.txt", "r"); // Open the input file "input.txt" for reading
    if (yyin == NULL) { // Check if the file was opened successfully
        perror("Error opening file");
        return 1;
    }
    yylex(); // Perform lexical analysis
    printf("Number of characters: %d\n", n_char); // Print the number of characters
    printf("Number of lines: %d\n", n_lines); // Print the number of lines
    fclose(yyin); // Close the input file
    return 0;
}
