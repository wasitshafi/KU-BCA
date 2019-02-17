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
 p2=(int *)realloc(p,2*n*sizeof(int));

 printf("\nnew ptr values are as :\t");
 for(i=0;i<n;i++)
 printf("%d\t",*(p2+i));

  printf("\n\nprevious prt values are as :\t");
  for(i=0;i<n;i++)
 printf("%d\t",*(p+i));
 getch();
 }
