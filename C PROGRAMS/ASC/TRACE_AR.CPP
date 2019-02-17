#include<stdio.h>
#include<conio.h>
void main()
 {
  int a[10][10],i,j,k=1,r,c,trace=0;
  clrscr();
  printf("\n\nenter the value of ""rows"" and ""columns""for square matrix (i.e. r=c for computing trace):\n");
  scanf("%d %d",&r,&c);
  if(r!=c)
  {
  printf("trace not possible because rows not equal to coulmns.");
  goto end;
  }
  printf("\n\nyou have to enter %d elements.\n\n",r*c);
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
 printf("\nthe given matris is as follows:\n");
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
  trace=trace+a[i][i];
  printf("\nthe trace of given matrix is as follows:\t%d",trace);
  end:
 getch();
  }