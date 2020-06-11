#include<stdio.h>
#include<conio.h>
#include<stdlib.h>
void main()
{
 char choice,choice2,ch[7]={'r','e','a','l','l','y,','\0'},i=0,n;
 clrscr();
 printf("\nDo you want to use this programe(y/n):\t");
 choice=getche();
 if(choice=='y')
 exit(0);
 else if(choice=='n')
 {
  n=1;
    do{
       printf("\nAre you ");
	      for(i=0;i<n;i++)
	       {
		 printf("%s ",ch);
	       }
       printf("sure you do not want to use this programe(y/n):\t");
       choice2=getche();
       n++;
      }while(choice2=='n');
 }
  getch();
}