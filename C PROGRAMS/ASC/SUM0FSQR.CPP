#include<stdio.h>
#include<conio.h>
void main()
     {
	int n, i=1,sum=0;
	clrscr();
	printf
	("\t enter the no  \n");
	scanf("%d" ,&n);
	printf("the no. is %d \n ",n);
	while(i<=n)
	{
	sum=sum+i*i;
	i=i+1;
	}
	printf("\nthe sum of first %d natural numbers with their squares  is %d \n",n,sum);
	getch();
     }