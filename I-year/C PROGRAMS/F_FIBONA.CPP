#include<stdio.h>
#include<conio.h>
void main()
{
int f_fibo(int a,int b,int c);
int x=0,y=1,n;
clrscr();
printf("\n\nenter the value of n, no. of terms to be printed;\t");
scanf("%d",&n);
printf("\t%d\t%d",x,y);
f_fibo(x,y,n);
getch();
}
int f_fibo(int a,int b,int c)
{
int term,i=2;
while(i<c)
{
term=a+b;
printf("\t%d",term);
a=b;
b=term;
i++;
}
return 0;
}