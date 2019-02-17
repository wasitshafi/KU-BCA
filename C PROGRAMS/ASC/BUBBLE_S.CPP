#include<stdio.h>
#include<conio.h>
void main()
 {
  int i,j,k=1,n,a[20],temp;
  clrscr();
  printf("\n\nenter the  number of elements:\t");
  scanf("%d",&n);
  clrscr();
  printf("\n\nyou have to enter %d elements\n\n\n",n);
  for(i=0;i<n;i++)
  {
  printf("enter the element no.%d:\t",k);
   scanf("%d",&a[i]);
   printf("\n");
   k++;
  }
  clrscr();
  printf("\n\nthe given elements are as follows:\n");
  printf("s.no\telements:\n");
  k=1;
  for(i=0;i<n;i++)
  {
  printf("%d \t %d",k,a[i]);
  printf("\n");
  k++;
  }
  for(j=0;j<n-1;++j);
 {
 for(i=0;i<n-1;++i)
 {
 if(a[i]>a[i+1])
 {
 temp=a[i];
 a[i]=a[i+1];
 a[i+1]=temp;
 i++;
 }
 }
 }
 printf("sorted elements are as follows;\n");
 for(i=0;i<n;i++)
 {
 printf("%d",a[i]);
 printf("\n");
 }
 getch();
 }