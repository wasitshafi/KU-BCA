#include<stdio.h>
#include<conio.h>
void main()
 {
  int a[2][50][50],j,i,k,r,c,ary=0;
  clrscr();
  printf("\n\nenter the number of 'rows':\t");
  scanf("%d",&r);
  printf("\n\nenter the number of 'columns':\t");
  scanf("%d",&c);
  clrscr();
  printf("\n\nyou have to enter %d elements for each of the matrix 'A' & 'B'.\n",r*c);
  printf("\nenter %d elements of matrix 'A':\n",r*c);
  for(i=0,k=1;i<r;i++)
  {
   for(j=0,k;j<c;j++,k++)
   {
   printf("\nenter element no %d :\t",k);
    scanf("%d",&a[ary][i][j]);
    }
  }
    ary++;
    clrscr();
  printf("\nenter %d elements of matrix 'B':\n",r*c);
 for(i=0,k=1;i<r;i++)
  {
   for(j=0;j<c;j++,k++)
   {
    printf("\nenter element no %d :\t",k);
    scanf("%d",&a[ary][i][j]);
    }
  }
  ary--;
  clrscr();
  printf("\n\nthe elements of given matrix 'A'is as follows:\n\n");
 for(i=0;i<r;i++)
  {
  printf("\n");
   for(j=0;j<c;j++)
    printf("%d\t",a[ary][i][j]);
  }
  ary++;
  printf("\n\nthe elements of given matrix 'B' is as follows:\n");
 for(i=0;i<r;i++)
  {
  printf("\n");
   for(j=0;j<c;j++)
    printf("%d\t",a[ary][i][j]);
  }
  getch();
 }


