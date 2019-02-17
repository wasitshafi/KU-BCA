#include<stdio.h>
#include<conio.h>
void main()
 {
  union{
  int a;
  char b[20];
  float c;

  }std;
  printf("enter the name of the std:\t");
  scanf("%s",std.b);
  printf("\nenter the roll no of std :\t");
  scanf("%d",&std.a);
  printf("\nenter the percentage of std:\t ");
  scanf("%f",&std.c);
  clrscr();
  printf("the name of the std is %s",std.b);
  printf("\nthe roll no of std is %d",std.a);
  printf("\nthe percentage of std is %f",std.c);
  getch();
  }