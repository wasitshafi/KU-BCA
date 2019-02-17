#include<stdio.h>
#include<conio.h>
void main()
 {
  int i=3,n,j;
  clrscr();
  printf("enter the value of n:\t");
  scanf("%d",&n);
  clrscr();
  printf("\ncomposite numbers(non-prime no's) from 1 to %d are as follows:\t",n);
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
