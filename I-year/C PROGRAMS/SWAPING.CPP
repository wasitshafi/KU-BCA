#include<stdio.h>
#include<conio.h>
void main()
{
	int a,b,temp;
	printf("\n\nenter the values\n\n");
	scanf("%d%d",&a,&b);
	printf("\n\tvalues before swapping are as a=%d \t b=%d",a,b);
	temp=a;
	a=b;
	b=temp;
	printf("\n\tvalue   after swapping are as a=%d \t b=%d",a,b);
	getch();
	clrscr();
	}
