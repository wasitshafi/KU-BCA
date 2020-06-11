#include<stdio.h>
#include<conio.h>
void main()
{
 int cube=0,rem,n;
 clrscr();
 printf("enter the value of n:");
 scanf("%d",&n);
 while(n!=0)
 {
 rem=n%10;
 cube=(rem*rem*rem)+cube;
 n=n/10;
 }
 if(cube==n)
 printf("\n\ngiven no. is armstrong no.");
 else
 printf("\ngiven no. is not armstrong no.");
 getch();
 }