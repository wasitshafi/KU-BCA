#include"stdio.h"
#include"conio.h"
void main()
{
	int num,i;
	clrscr();
	printf("enter the no. to check wheather the given no is prime or not\n");
	scanf("%d",&num);
	i=2;
	while(i<num-1)
	{
	if(num%i==0)
	{
	printf("the given number %d is not a prime number.\n",num);
	goto jump;
	}
	i++;
	}
	printf("\nthe given number %d is a prime number.\n",num);
	jump:
	getch();
	}


