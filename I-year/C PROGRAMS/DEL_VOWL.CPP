#include<stdio.h>
#include<conio.h>
#include<string.h>
void main()
{
 char str1[50],str2[50],i,j=0;
 clrscr();
 printf("\nenter the str ");
 gets(str1);
 for(i=0;i<strlen(str1)-1;i++)
 {
 if(str1[i]!='a'||str1[i]!='e'||str1[i]!='i'||str1[i]!='o'||str1[i]!='u')
 {
 str2[j]=str1[i];
 j++;
 }
 }
 puts(str2);
 getch();
 }