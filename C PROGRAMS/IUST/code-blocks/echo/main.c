#include <stdio.h>
#include <stdlib.h>
int main()
{
    int ch;

    printf("\nEnter a character:\t");
    while((ch = getchar()) != EOF)
    {
        printf("\nEntered character is :\t");
        putc(ch,stdout);
    }
}
