#include<stdio.h>
#include<conio.h>
void main()
 {
  int a[100][100],i,j,r,c;
  clrscr();
  printf("\n\n\nenter the value of 'rows' and 'columns';\n");
  scanf("%d %d",&r,&c);
  printf("\nenter %d elements of an matrix;\n",(r*c));
  for(i=0;i<r;i++)
  {
   for(j=0;j<c;j++)
   {
    scanf("\n%d",&a[i][j]);
   }
  }
  printf("\n\nthe given elements are as follows\n\n");
  for(i=0;i<r;i++)
   {
    printf("\n");
    for(j=0;j<c;j++)
    {
     printf("%d",a[i][j]);
     printf("\t");
    }
   }
   getch();
 }
