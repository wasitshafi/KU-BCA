#include"stdio.h"
#include"conio.h"
#include"stdlib.h"
void main()
{
	int *a;
	int n,i;
	clrscr();
	printf("enter the size of array\n");
	scanf("%d",&n);
	clrscr();
	a=(int *)malloc(n*sizeof(int));
	printf("enter %d elements of array \n",n);
	for(i=0;i<n;i++)
	{
	scanf("%d",&a[i]);     // or  scanf("%d",a+i);   and
	}
	clrscr();
	printf("the array elemnts are as follows\n");
	for(i=0;i<n;i++)
	{
	printf("%d",a[i]);    //    printf("%d",*(a+i));
	printf("\n");
	}
	getch();
	}





