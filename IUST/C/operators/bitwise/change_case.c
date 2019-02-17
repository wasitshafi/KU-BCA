#include<stdio.h>

#define CASE_BIT 0x20

int is_uppercase(char ch)
{
 return(ch & CASE_BIT) == 0;
}

char to_lower_case(char ch)
{
 return( ch | CASE_BIT);
}

char to_upper_case(char ch)
{
 return( ch & 0xDF);
}

int main()
{
 char ch;
 
 printf("\nEnter a character:\t");
 ch = getchar();
 
 if(is_uppercase(ch))
 printf("\n%c <=> %c\n", ch, to_lower_case(ch));
 else
 printf("\n%c <=> %c\n", ch, to_upper_case(ch));
 
 return 0;
 
}
