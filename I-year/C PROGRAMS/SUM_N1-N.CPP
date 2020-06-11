#include<stdio.h>
#include<conio.h>
void main()
{
	int i,n1,n2,sum=0,temp;
	clrscr();
	printf("\n\n\nenter the number from where you want to start adding numbers\t");
	scanf("%d",&n1);
	printf("\n\n\nenter the number from where you want to stop  adding numbers\t");
	scanf("%d",&n2);
	if(n1>n2)
	{
	printf("\noops! wrong in order\n");
	printf("but you don't worry i will change them into %d to %d",n2,n1);
	temp=n1;
	n1=n2;
	n2=temp;
	}
	for(i=n1;i<=n2;i++)
	{
	sum=sum+i;
	}
	printf("\n\nthe sum of numbers from %d to %d is %d",n1,n2,sum);
	getch();
}