#include"stdio.h"
//#include"conio.h"
int fact(int n);
int  main()
{
	int num;
	//clrscr();
	printf("enter a no\n ");
	scanf("%d",&num);
	if(num<0)
	{
	printf("no factorial for negative number:\n");
	}
	else
	{
	printf("factorial of no %d is %d",num,fact(num));
	}
return 0;
//	getch();

	}

	int fact(int n)
	{
	if(n==1)
	{
	return n;
	}
	n=n*fact(n-1);
	}
