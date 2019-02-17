#include<stdio.h>
#include<conio.h>
void main()
 {
  int a[100][100],b[10][100],k=1,i,j,r,c;
  clrscr();
  printf("\n\nenter the value of rows and columns:\t");
  scanf("%d",&r);
  scanf("%d",&c);
  printf("\n\nyou have to enter %d elements.\n\n",r*c);
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
  printf("\n\nthe given matris is as follows:\n\n");
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
  {
  b[i][j]=a[j][i];
  }
  }
  printf("\n\nthe transpose of given matrix is as follows:\n");
   for(i=0;i<r;i++)
  {
  printf("\n");
  for(j=0;j<c;j++)
  {
   printf("%d",b[i][j]);
   printf("\t");
   }
   }
  getch();
  }