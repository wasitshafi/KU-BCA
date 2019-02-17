#include<stdio.h>
#include<conio.h>
void main()
	{
		int a,b;
		clrscr();
		printf("\n\n enter the values \n");
		scanf("%d%d",&a,&b);
		printf("\n\n\t before swapping the values are as: \n\t a=%d  and  b=%d",a,b);
		a=a+b;
		b=a-b;
		a=a-b;
		printf("\n\n\t after  swapping the values are as: \n\t a=%d  and  b=%d",a,b);
		getch();
	}