#include<stdio.h>
#include<conio.h>
#include<stdlib.h>
void main()
{
 int i=0,*p,sum=0,n,*p2;
 clrscr();
 printf("enter the  no of elements:\t");
 scanf("%d",&n);
 p=(int *)calloc(n,sizeof(int));
 for(i=0;i<n;i++)
 scanf("%d",(p+i));
 for(i=0;i<n;i++)
 {
 sum=sum+*(p+i);
 }
 p2=(int *)realloc(p,2*n*sizeof(int));
 printf("");
 free(p);
 printf("sum of n elements are :\t%d",sum);
 getch();
 }