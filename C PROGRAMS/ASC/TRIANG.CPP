#include<stdio.h>
#include<conio.h>
void main()
 {
  int i,j;
  clrscr();
  for(i=0;i<10;i++)
  {
  printf("\n");
  for(j=1;j<=i;j++)
  {
  if((i+j)%2==0)
  printf("0");
  else
  printf("1");
  }
  }
  getch();
  }