#include<stdio.h>
#include<conio.h>
void main()
 {
  int sum1(int a,int b);
  int x,y,sum2;
  clrscr();
  printf("\n\nenter the value of 'a' and 'b':\n");
  scanf("%d%d",&x,&y);
  sum2=sum1(x,y);
//  clrscr();
  printf("\n\n\nthe sum of a %d and b=%d is:\t %d",x,y,sum2);
  getch();
  }
  int sum1(int a,int b)
  {
  int sum3;
  a=a+b;
  b=a-b;
  a=a-b;
  printf("\nin called function the value of a=%d and b=%d",a,b);
  sum3=a+b;
  return(sum3);
  }