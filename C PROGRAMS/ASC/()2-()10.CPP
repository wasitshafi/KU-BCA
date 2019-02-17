#include<stdio.h>
#include<conio.h>
void main()
	{
	 long n,nsave,rem,d,j=1,dec=0;
	 clrscr();
	 printf("\n\n\nenter the no. in binayry number system (i.e.1&0):\t");
	 scanf("%ld",&n);
	 nsave=n;
	 while(n>0)
	 {
		rem=n%10;
		d=rem*j;
		dec+=d;
		j*=2;
		n/=10;
	 }
	 printf("\n\n\nthe binary no.'%ld' is equal to '%ld' in decimal number system.",nsave,dec);
	 getch();
	}
