#include<stdio.h>
#include<conio.h>
void main()
      {
	unsigned i=0,n,sum;
	clrscr();
	printf("\n\nenter the number\t");
	scanf("%u",&n);
	printf("\n\nthe given number is %u",n);
	sum=0;
	while(i<=n)
	  {
	      sum+=i;
	      ++i;
	  }
	printf("\n\nthe sum of first %u numbers is %u",n,sum);
	getch();
	}