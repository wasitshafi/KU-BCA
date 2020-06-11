#include<stdio.h>
#include<conio.h>
void main()
	{
		float r,area,pi=3.1428;
		clrscr();
		printf("\n\n\t enter the radius of circle\n\t");
		scanf("%f",&r);
		printf("\n\t radius of circle is=%.2f",r);
		area=pi*r*r;
		printf("\n\n\t area of the circle is %.2f",area);
		getch();
	}