#include<stdio.h>
#include<conio.h>
#include FUN_1.CPP
void main()
{
  int x,y,total;
  clrscr();
  printf("\nenter any integer value:\t");
  scanf("%d",&x);
  clrscr();
  printf("\nenter any integer vaue:\t");
  scanf("%d",&y);
  total=sum(x,y);
  printf("sum of the two integer is:\t %d",total);
  getch();
  }