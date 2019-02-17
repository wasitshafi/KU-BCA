#include<stdio.h>
#include<conio.h>
void main()
	{
		long n,t,t1=0,t2=1,i=2;
		clrscr();
		printf("\n\n\nenter the value of n, the no. of terms to be generated \n\n");
		scanf("%ld",&n);
		printf("\nthe value of n is= %ld\n",n);
		printf("\nthe fibonacii series of %ld digits are as follows:\n",n);
		printf("\n%ld\t""%ld\t",t1,t2);
		while(i<n)
			{
			 t=t1+t2;
			 printf("%ld\t",t);
			 t1=t2;
			 t2=t;
			 i++;
			}
		getch();
	  }