#include"stdio.h"
#include"conio.h"
#include"math.h"
void main()
{
	int s,a,b,c,area;
	clrscr();
	printf("enter the three sides of the triangle\n\n");
	scanf("%d%d%d",&a,&b,&c);
	if(a<b+c && b<a+c && c<a+b)
	{
	s=(a+b+c)/2;
	area=sqrt(s*(s-a)*(s-b)*(s-c));
	}
	else
	printf("wrong input\n");


	printf("area of the triangle is %d",area);
	getch();
	}


