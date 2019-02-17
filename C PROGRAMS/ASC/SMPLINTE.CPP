#include<stdio.h>
#include<conio.h>
void main()
	{
		float  p,r,t,si;
		clrscr();
		printf("\n\n\t enter the principle amount\n\t");
		scanf("%f",&p);
		printf("\n\t enter rate of interest\n\t");
		scanf("%f",&r);
		printf("\n\t enter time\n \t");
		scanf("%f",&t);
		printf("\n\n principle amount=%.2f \t rate of interest=%.2f \t time=%.2f\n\n\n\t",p,r,t);
		si=(p*r*t)/100 ;
		printf("simple interest is=%.2f",si);
		getch();
	}