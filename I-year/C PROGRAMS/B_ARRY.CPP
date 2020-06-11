#include<stdio.h>
#include<conio.h>
void main()
{
 int a[2][3]={1,2,3,4,5,6},i,j;
 float b[4]={4.2,3.4,2.5,1.6};
 char c[6]={'a','b','c','d','e','f'};
 clrscr();
 printf("\n\n1. integer elements are as:\n");
 for(i=0;i<2;i++)
 {
 printf("\n");
 for(j=0;j<3;j++)
 {
 printf("%d",a[i][j]);
 printf("\t");
 }
 }
 printf("\n\n2. float elements are as:\n");
 for(i=0;i<4;i++)
 {
 printf("%.2f\t",b[i]);
 }
 printf("\n3. character elements are as:\n\n");
 for(i=0;i<6;i++)
 {
 printf("%c\t",c[i]);
 }



 getch();
}
