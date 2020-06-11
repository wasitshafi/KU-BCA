#include<stdio.h>
#include<conio.h>
void main()
    {
	 int i,j=1,n;
	 clrscr();
	 printf("\n\nenter the value of n ,the number of lines to be printed \t\t");
	 scanf("%d",&n);
	 for(i=1;i<=n;i++)
	   {
		 while(j<=i)
		 printf("%d",j);
		 printf("\n");
		 j++;
	   }
	 getch();
    }