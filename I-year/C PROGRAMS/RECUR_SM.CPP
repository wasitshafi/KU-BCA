#include<stdio.h>
//#include<conio.h>
int sum(int n);
int main()
{
int num,sm;
//clrscr();
printf("\n enter the value of n:\t");
scanf("%d",&num);
sm=sum(num);
printf("the sum of natural numbers upto %d is %d",num,sm);
//getch();
return 0;
}
int sum(int n)
{
if(n==0)
return n;
n=n+sum(n-1);
}
