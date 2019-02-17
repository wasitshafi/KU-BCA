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
  printf("%d",(i+j));
  }
  }
  getch();
  }