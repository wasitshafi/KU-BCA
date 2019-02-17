#include<stdio.h>
#include<conio.h>
void main()
	{
	unsigned n,n1,prod=1,rem;
	clrscr();
	printf("\n\nenter the digits ");
	scanf("\n%u",&n);
	printf("\n\nthe given digits is %u",n);
	n1=n;
	while(n!=0)
	{
	rem=n%10;
	prod*=rem;
	n=n/10;
	}
	printf("\n\nthe product of all given digits %u are %u",n1,prod);
	getch();
       }