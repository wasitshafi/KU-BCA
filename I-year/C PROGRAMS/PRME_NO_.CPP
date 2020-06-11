#include<stdio.h>
#include<conio.h>
#error this program prints composite numbers
void main()
 {
  int i=3,n,j;
  clrscr();
  printf("enter the value of n:\t");
  scanf("%d",&n);
  printf("non-prime(composite no's) numbers from 1 to %d:\t",n);
  for(i=3;i<=n;i++)
  {
  for(j=2;j<i;j++)
  {
  if(i%j==0)
  {
  printf("%d\t",i);
  break;
  }
  }
  }
  getch();
  }
