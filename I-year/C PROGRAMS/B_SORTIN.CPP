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
     scanf("%d\t",&a[i]);/*scan. all elements*/
     k++;
   }
 // clrscr();
/*  printf("\n\nthe given elements are as follows:\n");
  printf("s.no\telements:\n");
  k=1;
  for(i=0;i<n;i++)
  {
  printf("%d \t %d\n",k,a[i]);
  k++;
  }    */
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
 printf("sorted elements are as follows;\n");
  for(i=0;i<n;i++)
    {
     printf("%d\n",a[i]);
    }
 getch();
}