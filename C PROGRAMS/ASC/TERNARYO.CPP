#include<stdio.h>
#include<conio.h>
void main()
{
	int a,b,r1,r2;
	clrscr();
	printf("\n\nenter the two value\n\n");
	scanf("%d%d",&a,&b);
	r1=a>b?a:b;
	printf("\nresult 1 is =%d\n",r1);
	r2=a<b?a:b;
	printf("\nresult 2 is =%d",r2);
	getch();
	}
