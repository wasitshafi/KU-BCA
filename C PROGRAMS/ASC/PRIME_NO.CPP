#include<stdio.h>
#include<conio.h>
#include<math.h>
void main()
	{
	 long i,n;
	 clrscr();
	 printf("\n\nenter the number:\t");
	 scanf("%ld",&n);
	 for(i=2;i<=sqrt(n);i++)

		if(n%i==0)
		break;
		if(i>sqrt(n))

		printf("\n\n%ld is a prime number\n\n ",n);

		else
		printf("\n\n%ld is not a prime number\n",n);

		getch();
		}