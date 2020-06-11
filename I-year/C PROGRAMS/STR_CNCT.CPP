#include<stdio.h>
#include<conio.h>
#include<string.h>
void main()
 {
   char a[50],b[50],c[50];
   int i,j,temp1,temp2,temp3;
   clrscr();
   printf("\n\nenter any two string\n");
   gets(a);
   gets(b);
   clrscr();
   printf("\n\ngiven strings are as follows:\n");
   puts(a);
   printf("\n");
   puts(b);
   temp1=strlen(a);
   temp2=strlen(b);
   temp3=temp1+temp2;
   printf("\nconcatination of these two strings is as follows:\n");
   for(i=0;i<=temp1;i++)  /*+1 for 1space between two strings*/
   {
   c[i]=a[i];
   }
   c[i]=' ';
   i=0;
   j=0;
   for(i=temp1+1;i<=temp3+1;i++)
   {
   c[i]=b[j];
   j++;
   }
   printf("\n");
   for(i=0;i<temp3+1;i++)
   printf("%c",c[i]);
   getch();
   }