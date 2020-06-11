#include<stdio.h>
#include<conio.h>
#include<string.h>

void main()
 {
  char a[100],b[100];
  clrscr();
  printf("\n\nenter any two strings;\n\n");
  printf("\n 1. ");
  gets(a);
  /* or */
 // scanf("%s",a);
  printf("\n 2. ");
  gets(b);
  /* or */
 // scanf("%s"o,b);
 clrscr();
 puts("\n\n\n1. the given string :\t");
 puts(a);
 /* or */
// printf("\nthe given string is:\t%s\n",a);
 printf("\nhas %d character length.",strlen(a));
 puts("\n\n\n2. the given string:\t");
 puts(b);
 /* or */
// printf("\nthe given string is:\t%s\n",b);
 printf("\nhas %d character length.",strlen(b));
 if(strcmp(a,b)==0) /*if result is true it returns 0 value*/
 {
 printf("\n\n\n3. given two strings are same.");
 }
 else
 {
 printf("\n\n\n3. given two strings are not same.");
 }
 getch();
}

