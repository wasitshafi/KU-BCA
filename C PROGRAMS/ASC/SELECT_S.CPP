#include<stdio.h>ppp
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
  printf("%d \t %d\n",k,a[i]);
  k++;
  }
  for(i=0;i<n;i++)
 {
  for(j=i;j<=n;j++)
 {
 if(a[i]>a[j])
 {
 temp=a[i];
 a[i]=a[j];
 a[j]=temp;
 }
 }
 }
 printf("sorted elements are as follows;\n");
 for(i=0;i<n;i++)
 printf("%d\n",a[i]);
 getch();
}