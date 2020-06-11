#include<stdio.h>
#include<conio.h>

void main()
{
 int tos=-1,i,len;
 int stk[10];
 char str[50];
 clrscr();
 printf("\nenter a string:\t");
 gets(str);
 len=strlen(str);
 printf("\n\ngiven string in reverse words are as:\n");
 for(i=len-1;i>=0;i--)
   {
    if(str[i]!=32) //means if its not a space

     stk[++tos]=str[i];
    else
    {
      while(tos>=0)
       printf("%c",stk[tos--]);
     printf(" ");
    }
   }
 while(tos>=0)
    printf("%c",stk[tos--]);
 printf(" ");

getch();
}