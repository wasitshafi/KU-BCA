#include<stdio.h>
#include<conio.h>

int main()
 {
  int i,j,n,a[20],temp;
  
  printf("\n\nenter the  number of elements:\t");
  scanf("%d",&n);
  //clrscr();
  printf("\n\nyou have to enter %d elements\n\n\n",n);
  for(i=0;i<n;i++)
  {
  printf("enter the element no.%d:\t",i+1);
   scanf("%d",&a[i]);
   printf("\n");
  }
  //clrscr();
  printf("\n\nthe given elements are as follows:\n");
  printf("s.no\telements:\n");

  for(i=0;i<n;i++)
  {
  printf("%d \t %d\n",i+1,a[i]);
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
 return 0;
 getch();
}
