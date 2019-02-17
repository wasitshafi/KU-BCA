#include<stdio.h>
#include<conio.h>
void main()
	{
	 int n1,n2=1,n3,upto;
	 clrscr();
	 printf("\n\nenter the tabel no which you want\t");
	 scanf("%d",&n1);
	 printf("\nenter the limit upto you want this table\t");
	 scanf("%d",&upto);
	 printf("\n\nthe table of %d is as follows;\n\n",n1);
	 while(n2<=upto)
		{
		 n3=n1*n2;
		 printf("     %dx%d=%d\n",n1,n2,n3);
		 n2++;
		}
		getch();
       }

