#include<stdio.h>
#include<conio.h>
#include<string.h>
#include<stdlib.h>
void main()
 {
 int i,j;
 char a[50],b[50],c[50];
 printf("enter srginh\t");
 gets(a);
 strcpy(c,a);
 for(i=0,j=strlen(a)-1;i<=strlen(a);i++,j--)
 b[i]=a[j];
/* if(strcmp(b,c)==0)
 printf("palindorme");
 else
 printf("not a palindrome");   */

	  /*      or this          */
 for(i=0;i<strlen(c);i++)
 {
 if(c[i]!=b[i])
 {
 printf("\nnot a palindrome");
 getch();      /*for to stop on console sereen*/
 exit(0);
 }
 }
 printf("palindrome");
 getch();
 }