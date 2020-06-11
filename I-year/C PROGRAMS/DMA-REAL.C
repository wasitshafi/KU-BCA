#include"stdio.h"
#include"conio.h"
#include"stdlib.h"
void main()
{
	int *a,*b;
	int n,i;
	clrscr();
	printf("enter the size of array\n");
	scanf("%d",&n);
	clrscr();
	a=(int *)malloc(n*sizeof(int));
	printf("enter %d elements of array \n",n);
	for(i=0;i<n;i++)
	{
	a[i]=i+1;
	}
	clrscr();
	b=(int *)realloc(a,8*sizeof(int));
	printf("\nthe adress of previous block is %d and of new block is %d",a,b);

	printf("\n\nthe array elemnts are as follows\n");
	for(i=0;i<n;i++)
	{
	printf("%d",b[i]);       //       printf("%d",*(a+i));
	printf("\n");
	}
	getch();
	}




