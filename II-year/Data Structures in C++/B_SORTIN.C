#include<stdio.h>
#include<conio.h>
void main()
 {
  int a[30],i,j,k=1,n,temp;
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
  printf("\n\nthe given elements are as follows:\n\n\n");
  printf("\ts.no\telements:\n");

  for(i=0;i<n;i++)
   {
    printf("\t%d \t %d\n",i+1,a[i]);
   }
  for(j=0;j<n-1;j++)
   {
    for(i=0;i<n-1;i++)
     {
      if(a[i]>a[i+1])
       {
	 temp=a[i];
	 a[i]=a[i+1];
	 a[i+1]=temp;
       }
     }
   }
 printf("\n\nsorted elements are as follows;\n");
 for(i=0;i<n;i++)
  {
    printf("%d\n",a[i]);
  }
 getch();
}