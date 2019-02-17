#include"stdio.h"
#include"conio.h"
#include"stdlib.h"
void main()
{
	int *a;
	int n,i;
	FILE *fptr;
	fptr=fopen("dma-through-files","w");
	clrscr();
	printf("enter the size of array\n");
	scanf("%d",&n);
	clrscr();
	a=(int *)calloc(n,sizeof(int));
	printf("enter %d elements of array \n",n);
	for(i=0;i<n;i++)
	{
	scanf("%d",&a[i]);   //  or     scanf("%d",a+i);   and
	}
	for(i=0;i<n;i++)
	{
	fprintf(fptr,"%d",a[i]);
	}
	fclose(fptr);
	getch();
	}













