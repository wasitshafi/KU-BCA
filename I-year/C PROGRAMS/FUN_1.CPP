#include<stdio.h>
#include<conio.h>
int sum(int a,int b);
void main()
{
 int i=1,j=19,s;
 clrscr();
 s=sum(i,j);
 printf("sum=\t%d",s);
 getch();
}
int sum(int a,int b)
{
 int s;
 s=a+b;
 return(s);
}
