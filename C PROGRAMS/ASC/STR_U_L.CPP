#include<stdio.h>
#include<conio.h>
#include<string.h>

void main()
 {
   char str[50],n,i;
   printf("\nenter the string:\t");
   gets(str);
   clrscr();
  // puts(a);
   n=strlen(str);
   for(i=0;str[i]!='\0';i++)
   {
   if(str[i]>='A'&&str[i]<='Z')
   str[i]=str[i]+32;
   else
   if(str[i]>='a'&&str[i]<='z')
   str[i]=str[i]-32;
   }
 getch();
 }