#include<stdio.h>
#include<conio.h>
#include<math.h>
void main()
 {
  int a[100][100],i,j,k=1,sum=0,r,c;
  float norm=0.0;
  clrscr();
  printf("\n\n1. enter the value of row and columns:\n\n\n");
  scanf("%d%d",&r,&c);
  clrscr();
  printf("\n1. enter %d elements of matrix:\n\n",r*c);
  for(i=0;i<r;i++)
  {
  for(j=0;j<c;j++)
  {
  printf("enter element no.%d:\t",k);
  scanf("%d",&a[i][j]);
  printf("\n");
  k++;
  }
  }
  clrscr();
  printf("\n\n1. the elements of matrix are as follows:\n");
   for(i=0;i<r;i++)
  {
  printf("\n");
  for(j=0;j<c;j++)
  {
  printf("%d",a[i][j]);
  printf("\t");
  }
  }
  for(i=0;i<r;i++)
  {
  for(j=0;j<c;j++)
  sum=sum+a[i][j]*a[i][j];
  }
  norm=sqrt(sum);
  printf("\n\n2. the norm of given matrix is :\t%.2f",norm);
  getch();
  }

