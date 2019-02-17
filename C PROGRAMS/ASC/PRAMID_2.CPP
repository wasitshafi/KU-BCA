#include<stdio.h>
#include<conio.h>
void main()
    {
	 int i,j,n;
	 clrscr();
	 printf("\n\nenter the value of n ,the number of lines to be printed \t\t");
	 scanf("%d",&n);
	 for(i=1;i<=n;i++)
	   {
		 for(j=1;j<=i;j++)
	       //	 printf(" ");
		 printf("%d",j);
		 printf("\n");
	   }
	 getch();
    }