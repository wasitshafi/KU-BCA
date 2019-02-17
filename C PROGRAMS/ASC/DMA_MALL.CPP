#include<stdio.h>
#include<conio.h>
#include<stdlib.h>
void main()
 {
  int n,*p1,*p2,i;
  clrscr();
  printf("enter the value of 'n':\t");
  scanf("%d",&n);
  p1=(int *)malloc(n*sizeof(int));
  p2=(int *)malloc(100);
  printf("\n\nenter the elements of p1:\n");
  for(i=0;i<n;i++)
  {
  scanf("%d",(p1+i));
  }
clrscr();
  printf("\n\nente the elements of p2:\n");
  for(i=0;i<n;i++)
  {
  scanf("%d",&p2[i]);
  }
  clrscr();

 printf("\n\nthe elements of p1 are:\n");
  for(i=0;i<n;i++)
  {
  printf("%d\t",*(p1+i));
  }

 printf("\n\nthe elements of p2 are:\n");
  for(i=0;i<n;i++)
  {
  printf("%d\t",p2[i]);
  }
  getch();
  }






