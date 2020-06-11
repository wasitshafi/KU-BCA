#include<stdio.h>
#include<conio.h>
#include<string.h>
void main()
 {
   int vol=0,nvol=0,check,i=0,temp;
   char a[100];
   clrscr();
   printf("\n\nenter any string:\t");
   gets(a);
   temp=strlen(a);
   while(i<temp)
   {
   i++;
   switch (a[i])
   {
   case 'a':
   case 'A':
   case 'e':
   case 'E':
   case 'i':
   case 'I':
   case 'o':
   case 'O':
   case 'U':
   case 'u':
   vol=vol+1;
   break;
   default:(nvol=nvol+1);
   break;
   }
   }
   printf("\n\nnumber of vowel alphabets are:\t%d\n\n",vol);
   printf("number of non_vowel alphabets:\t%d",nvol);
   getch();
   }


