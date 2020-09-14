//cerner_2^5_2020
#include <stdio.h>

char *c[] = { "TESTERS", "SAY", "PROGRAMME", "CRASHED" }; 
char **cp[] = { c+3, c+2, c+1, c }; 
char ***cpp = cp; 
 
int main() 
{ 
    printf("**%s", **++cpp); 
    printf("%s ", *--*++cpp+5); 
    printf("%s", *cpp[-2]+6);
    printf("%s**\n", cpp[-1][-1]+1); 
    return 0; 
} 
