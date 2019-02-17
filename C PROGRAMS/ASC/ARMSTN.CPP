#include<stdio.h>
#include"conio.h"
void main()
 {
  long int num,sum=0,dummy,rem,n,j;
  clrscr();
  for(num=1;num<999;num++)
  {
  n=num ;
  sum=0;
  while(n!=0)
  {
   rem=n%10;
   sum=(rem*rem*rem)+sum;
   n=n/10;
  }
   if(sum==num)
   printf("%ld\t",num);
   }
  getch();
   }
