#include"stdio.h"
#include"conio.h"
#include"stdlib.h"
void main()
{
	int *a;
	int n,i;
	int sum,max;
	sum=max=0;
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
	printf("\t\t");
	}
	for(i=0;i<n;i++)
	{
	if(max<a[i])
	{
	max=a[i];
	}
	sum=sum+a[i];
	}
	printf("\nthe greatest number among the given no is %d",max);
	printf("\nthe sum of the above given no is %d",sum);
	getch();
	}