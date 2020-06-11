#include<stdio.h>
#include<conio.h>
void main()
	{
	 int a[100],i,j=1,k=1,n,max,min,nsum=0,psum=0;
	 float sum;
	 clrscr();
	 printf("\n\n1. enter the value of an array\t");
	 scanf("%d",&n);
	 clrscr();
	 for(i=0;i<n;i++)
	 {
	 printf("\nenter the element no.%d\t\t",j);
	 scanf("%d",&a[i]);
	 j++;
	 }
	 clrscr();
	 printf("\n\n\n1. the given elements are as follows:\n\n");
	 printf("\n\ts.no\telements\n");
	 for(i=0;i<n;i++)
	 {
	 printf("\t%d\t%d\n",k,a[i]);
	 k++;
	 }
	 max=a[0];
	 for(i=1;i<n;i++)
	 {
	 if(max<a[i])
	 {
	 max=a[i];
	 }
	 }
	 min=a[0];
	 for(i=1;i<n;i++)
	 {
	 if(min>a[i])
	 {
	 min=a[i];
	 }
	 }
	 for(i=0;i<n;i++)
	 {
	 sum=sum+a[i];
	 }
	 for(i=0;i<n;i++)
	 {
	 if(a[i]>=0)
	 psum=psum+a[i];
	 else
	 nsum=nsum+a[i];
	 }
	 printf("\n\n2. the maximun value of an element is: %d",max);
	 printf("\n\n3. the minimum value of an element is: %d",min);
	 printf("\n\n4. the sum of all these elements is: %.2f",sum);
	 printf("\n\n5. the sum of all positive elements is:%d",psum);
	 printf("\n\n6. the sum of all negative elements is:%d",nsum);
	 printf("\n\n7. the average of these elements is: %.2f",sum/n);
	 getch();
	}