	 /*program to check leap year*/
#include<stdio.h>
#include<conio.h>
void main()

	{
	int year;
	clrscr();
	printf("\n \n enter year \n");
	scanf("%d" ,&year);
	if(year%4==0 && year%100!=0 || year%400==0)

	{
	printf("given year is a leap year");
	}
	else
       {

       printf("given year is not a leap year");
	}
	getch();
	}
