#include<stdio.h>
#include<conio.h>
void main()
	{
	int n,rem,sum=0,prd=1;
	clrscr();
	printf("\nenter the digits ");
	scanf("\n%d",&n);
	printf("\n\nthe given digits is %d\n\n",n);
	while(n!=0)
	{
	rem=n%10;
	sum+=rem;
	prd=prd*rem;
	n=n/10;
	}
	printf("sum of digits is %d\n ",sum);
	printf("PRD OF DIG IS %d",prd);         /*OPTIONAL*/
	getch();
       }