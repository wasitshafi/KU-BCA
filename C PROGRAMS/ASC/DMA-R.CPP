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
	scanf("%d",&a[i]);   //  or     scanf("%d",a+i);   and
	}
	b=(int *)realloc(a,3*n*sizeof(int));   //	b=(int *)realloc(NULL,2*n*sizeof(int));
	printf("prev block =%d new block %d",a,b);
	printf("the array elemnts are as follows\n");
	for(i=0;i<n;i++)
	{
	printf("%d\tpv blk %d\t new blk %d\t",b[i],a+i,b+i);       //       printf("%d",*(a+i));
	printf("\n");
	}
	getch();
	}




