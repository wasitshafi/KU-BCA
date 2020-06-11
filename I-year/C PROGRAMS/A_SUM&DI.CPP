#include<stdio.h>
#include<conio.h>
void main()
 {
  int a[100][100],b[100][100],s[100][100],d[100][100],i,j,r,c;
  clrscr();
  printf("\n\n1. enter the value of 'rows' and 'columns';\n\n");
  scanf("%d %d",&r,&c);
  clrscr();
  printf("\n\n1. you have to enter %d elements for each of the matrix\n",r*c);
  printf("\n\n2. enter the elements of an matrix 'a'\n\n");
  for(i=0;i<r;i++)
  {
   for(j=0;j<c;j++)
   {
    scanf("%d",&a[i][j]);
   }
  }
  printf("\n\n3. enter the elemnts of an matrix 'b'\n\n");
   for(i=0;i<r;i++)
  {
   for(j=0;j<c;j++)
   {
    scanf("%d",&b[i][j]);
   }
  }
 clrscr();
 printf("\n\n1. the given matrix 'a' are as follows:\n");
  for(i=0;i<r;i++)
  {
  printf("\n");
   for(j=0;j<c;j++)
   {
    printf("%d",a[i][j]);
    printf("\t");
   }
  }
  printf("\n\n2. the given matrix 'b' are as follows:\n");
   for(i=0;i<r;i++)
  {
  printf("\n");
   for(j=0;j<c;j++)
   {
    printf("%d",b[i][j]);
    printf("\t");
   }
  }
  for(i=0;i<r;i++)
  {
   for(j=0;j<c;j++)
   {
    s[i][j]=a[i][j]+b[i][j];
    d[i][j]=a[i][j]-b[i][j];
   }
  }
  printf("\n\n3. the sum of given matrices 'a'&'b' are as follows ;\n");
  for(i=0;i<r;i++)
  {
  printf("\n");
   for(j=0;j<c;j++)
   {
    printf("%d",s[i][j]);
    printf("\t");
   }
  }
  printf("\n\n4. the diffrence between these two matrices are as follows;\n\n");
   for(i=0;i<r;i++)
  {
  printf("\n");
   for(j=0;j<c;j++)
   {
    printf("%d",d[i][j]);
    printf("\t");
   }
  }
 getch();
 }