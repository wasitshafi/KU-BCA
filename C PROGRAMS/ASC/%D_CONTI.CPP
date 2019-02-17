#include<stdio.h>
#include<conio.h>
void main()
       {
	int n,i=0;
	clrscr();
	printf("\n\nenter the limit of counting:\t");
	scanf("%d",&n);
	printf("\n\ndecimal\t\toctal\t\thexa-decimal\n");
	while(i<=n)
	{

	printf(" %d \t\t",i);
	printf(" %o \t\t",i);
	printf(" %x \n",i);
	i++;
	}


	getch();
       }
