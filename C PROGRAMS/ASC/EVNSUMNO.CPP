#include<stdio.h>
#include<conio.h>
void main()
	{
	 int evnsum=0,oddsum=0,i=1,n;
	 clrscr();
	 printf("\n\nenter the number\t");
	 scanf("%d",&n);
	 while(i<=n)
		{
		 if(i%2==0)
		 evnsum=evnsum+i;
		 else
		 oddsum=oddsum+i;
		 i++;
		}
		 printf("\n\nthe sum of even numbers form 1 to %d is= %d",n,evnsum);
		 printf("\n\nthe sum of odd  numbers from 1 to %d is= %d",n,oddsum);
		 getch();
	}