#include<stdio.h>
#include<conio.h>
void main()
     {
	int n, i=1,sum=0;
	clrscr();
	printf
	("\n\n\t enter the no\t");
	scanf("%d" ,&n);
	printf("the no. is %d \n ",n);
	while(i<=n)
	{
	sum=sum+i;
	i=i+1;
	}
	printf("\nthe sum of first %d natural numbers is %d \n",n,sum);
	getch();
     }