#include<stdio.h>
#include<conio.h>
#include<string.h>
#include<stdlib.h>
#include<ctype.h>
void main()
{
 int i[6]={1,2,3,5};
 int j[9],k;
 char a[50]={'w','e','d','q'},b[50];
clrscr();
puts(a);
printf("%d",i[0]);
printf("%d",i[1]);
printf("%d",i[2]);
printf("%d",i[3]);
printf("%d",i[4]);
printf("%d",i[5]);
printf("%d",i[6]);

for(k=0;k<5;k++)
printf("\t%d",j[k]);
/* printf("\nenter the string");
gets(a);
// clrscr();
 printf("\n\n\nthe given 2nd string:\n\n\n");
/* len=strlen(a);
 for(i=0;i<strlen(a);i++)
 {
 if(a[i]==tolower(a[i]))
 a[i]=toupper(a[i]);
 else
 a[i]=tolower(a[i]);
 }*/

/* gets(b);
 if(strcmp(a,b)==0)
 printf("equal");
 else
 printf("not equal");
  */
 getch();
 }