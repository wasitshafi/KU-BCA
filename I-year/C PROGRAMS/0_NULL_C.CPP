#include"stdio.h"
#include"conio.h"
void main()
{
 char a[8];
 printf("null character:\n");
 printf("enter a string upto 8 characters:\t");
 scanf("%s",&a);
 clrscr();
 printf("\ngiven string is :\t");
 puts(a);
 printf("\nnow its  remains to only 3 characters:\t");
 a[3]='\0';
 puts(a);
 getch();

 }