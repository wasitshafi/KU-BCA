#include<stdio.h>
#include"conio.h"
void main()
 {
  int num,sum=0,dummy,rem;
  clrscr();
  printf("enter the no:\t");
  scanf("%d",&num);
  dummy=num;
  while(num!=0)
  {
   rem=num%10;
   sum=(rem*rem*rem)+sum;
   num=num/10;
  }
   if(sum==dummy)
   printf("\nthe given no.is armstrong no.");
   else
   printf("\n the given no. is not a armstrong no.");
   getch();
   }