#include<stdio.h>
#include<conio.h>
void main()
	{
	long number; int digit_req;
	clrscr();
	printf("enter a no. \n ");
	scanf("%ld",&number);
	printf("given no=%ld\n",number);
	digit_req=number%10;
	printf("the digit at the units position of the given no is %d",digit_req);
	getch();
	}