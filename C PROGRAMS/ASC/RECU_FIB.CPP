#include<stdio.h>
#include<conio.h>
void main()
{
  int fact(int n1);
  int n,i;
  clrscr();
  scanf("%d",&n);
  clrscr();
  printf("fibonacii series upto %d no. are as follows:\n\n",n);
  printf("0 \t 1 \t");
  fact(n);
  getch();
  }
  int fact(int n1)
  {
  static int t,t1=0,t2=1;
  if(n1==2)
  return 1;
  t=t1+t2;
  printf("%d\t",t);
  t1=t2;
  t2=t;
  n1=fact(n1-1);
//  return 0;
  }
