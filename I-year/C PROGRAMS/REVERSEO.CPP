#include<stdio.h>
#include<conio.h>
void main()
	{
	unsigned n,i=1,rem;
	clrscr();
	printf("\nenter the digits ");
	scanf("\n%u",&n);
	printf("\n\nthe given digits is %u\n\n",n);

	while(n>0)
	{
	rem=n%10;
	printf("the reverse of given digit is: %u",rem);
	n=n/10;
	}
	getch();
       }