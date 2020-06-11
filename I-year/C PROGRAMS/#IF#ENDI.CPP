#include<stdio.h>
#include"conio.h"
#define value 10
void main()
{
int a=10,b=20;
clrscr();
printf("\nprograme for #if#endif\n");
#if value>1
/*if the conditon is false then the statements between #if and #end if will
 not be executed */
printf("\nvalue is greater than 10\n");/*in the  #if no parenthesis is requried*/
a=a+5,b=b+5;
printf("\nvalues are a=%d\tb=%d",a,b);
#endif
printf("\nvalues are a=%d\tb=%d",a,b);
printf("\n\nend of programe");
getch();
}