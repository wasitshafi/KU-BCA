#include<stdio.h>
#include<conio.h>
void main()
 {
  int a=10;
  clrscr();
  gotoxy(4,10); /*it mean 4th column and 10th row*/
  printf("1. c program for 'gotoxy' function.");
  gotoxy(13,15);
  printf("2. a=%d",a);
  gotoxy(1,5);
  printf("3. i now understand the use of 'gotoxy' function");
  getch();
  }