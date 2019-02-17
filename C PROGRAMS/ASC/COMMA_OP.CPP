#include<stdio.h>
#include<conio.h>
void main ()
{
int a,b,sum;
clrscr();
printf("\n\nenter the values of 'a' , 'b':\n");
scanf("%d%d",&a,&b);
clrscr();
printf("\n\nthe values before swapping are:\na=%d\tb=%d\n",a,b);
a=a+b,b=a-b,a=a-b;
printf("the values after swapping are :\na=%d\tb=%d\n",a,b);
getch();
}