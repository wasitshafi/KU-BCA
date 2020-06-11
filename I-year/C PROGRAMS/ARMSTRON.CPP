#include<stdio.h>
#include"conio.h"
void main()
 {
  int num,n,cube,d,sum;
  printf("armstrong numbers are as :\t");
  for(num=100;num<=999;num++)
  {
  n=num;
  sum=0;
  while(n>0)
  {
   d=n%10;
   n=n/10;
   cube=d*d*d;
   sum=sum+cube;
   }
   if(num==sum)
   printf("%d\t",num);
   }
   getch();
   }