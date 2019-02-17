#include<stdio.h>
#include<conio.h>
void main()
 {
  int a[100][100],b[100][100],s[100][100],d[100][100],i,j,k=1,r,c;
  clrscr();
  printf("\n\nenter the value of ""rows"" and ""columns"" for both two matricies:\n");
  scanf("%d %d",&r,&c);
  printf("\nenter %d elements of matrix 'a':\n",r*c);
  for(i=0;i<r;i++)
  {
  for(j=0;j<c;j++)
  {
  printf("enter the element no.%d:\t",k);
  scanf("%d",&a[i][j]);
  printf("\n");
  k++;
 }
 }
 k=1;
 printf("\nenter %d elements of matrix 'b':\n",r*c);
 for(i=0;i<r;i++)
 {
 for(j=0;j<c;j++)
 {
 printf("enter element no.%d:\t",k);
  scanf("%d",&b[i][j]);
  printf("\n");
  k++;
  }
  }
  clrscr();
  printf("\given  matrix 'a'is as follows:\n");
 for(i=0;i<r;i++)
 {
 printf("\n");
 for(j=0;j<c;j++)
  printf("%d\t",a[i][j]);
  }
 printf("\ngiven  matrix 'b'is as follows:\n");
 for(i=0;i<r;i++)
 {
 printf("\n");
 for(j=0;j<c;j++)
  printf("%d\t",b[i][j]);
  }
for(i=0;i<r;i++)
{
for(j=0;j<c;j++)
{
s[i][j]=a[i][j]+b[i][j];
d[i][j]=a[i][j]-b[i][j];
}
}
 printf("\nsum of matrix 'a'&'b'is as follows:\n");
 for(i=0;i<r;i++)
 {
 printf("\n");
 for(j=0;j<c;j++)
  printf("%d\t",s[i][j]);
  }
  printf("\ndifference between matrix 'a'&'b'is as follows:\n");
 for(i=0;i<r;i++)
 {
 printf("\n");
 for(j=0;j<c;j++)
  printf("%d\t",d[i][j]);
  }
 getch();
 }
