#include<stdio.h>
#include<conio.h>
#include<string.h>
void main()
{
 char a[20],b[20],i;
 clrscr();
 printf("enter two strings:\n");
 gets(a);
 gets(b);
 printf("the concatination of these two strings are :\n");
 for(i=0;i<strlen(a);i++)
 {
 printf("%c",a[i]);
 }
 printf(" ");
 for (i=0;i<strlen(b);i++)
 printf("%c",b[i]);
 getch();
 }
