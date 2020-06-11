#include<stdio.h>
#include<conio.h>
void f_ary(int,int *ptr);
void main()
{
 int ary[50],i,no;
 clrscr();
 printf("enter no. of elements:\t");
 scanf("%d",&no);
 clrscr();
 printf("\n\nyou have to enter %d elements.\n\n",no);
 for(i=0;i<no;i++)
 {
 printf("enter element no %d:\t",i+1);
 scanf("%d",&ary[i]);
 }
 f_ary(no,ary);
 getch();
 }
 void f_ary(int n,int *ptr)
 {
 int j;
 clrscr();
 printf("\n\ngiven elements are as follows:\n\n");
 for(j=0;j<n;j++)
 {
 printf("\nelement no %d =\t%d",j+1,*(ptr+j));
 }
 }