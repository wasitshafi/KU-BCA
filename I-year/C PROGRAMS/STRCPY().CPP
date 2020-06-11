#include<stdio.h>
#include<conio.h>
#include<string.h>
void main()
{
char a[50],b[50];
puts("c prog for strcpy:");
clrscr();
printf("enter str 1\n\n");
gets(a);
printf("\n\nenter the str2\n\n");
gets(b);
strcpy(a,b); /*copying b int a */
clrscr();
printf("\n\nstring a=");
puts(a);
printf("\n\nstring b=");
puts(b);
getch();
}
