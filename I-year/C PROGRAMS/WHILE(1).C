#include<stdio.h>
#include<conio.h>
void main()
{
 int num;
 printf("enter number:\t");
 scanf("%d",&num);
 while(num)
 {
  gotoxy(0,0);
  printf("%d\n",num);

  num--;
 }
 getch();
 }