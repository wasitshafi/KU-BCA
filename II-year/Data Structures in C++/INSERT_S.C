#include<stdio.h>ppp
#include<conio.h>
void main()
 {
  int i,j,n,a[20],temp,pt;
  clrscr();
  printf("\n\nenter the  number of elements:\t");
  scanf("%d",&n);
  clrscr();
  printf("\n\nyou have to enter %d elements\n\n\n",n);
  for(i=0;i<n;i++)
  {
  printf("\nenter the element no.%d:\t",i+1);
   scanf("%d",&a[i]);
  }
  clrscr();
  printf("\n\nthe given elements are as follows:\n");
  printf("s.no\telements:\n");

  for(i=0;i<n;i++)
  {
  printf("%d \t %d\n",i+1,a[i]);
  }
 //------------------------------------------------------//
  // a[0]=0;
  for(i=1;i<=n;i++)
  {
    temp=a[i];
    pt=i-1;
    while(temp<a[pt])
    {
     a[pt+1]=a[pt];
     pt--;
    }
    a[pt+1]=temp;
  }
 //------------------------------------------------------//
 printf("sorted elements are as follows;\n");
 for(i=0;i<n;i++)
 printf("%d\n",a[i]);
 getch();
}
