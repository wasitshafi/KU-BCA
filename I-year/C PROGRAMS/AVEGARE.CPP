#include<stdio.h>
#include<conio.h>
void main()
	{
	 int a[20],i,n,sum=0,k=1;
	 float avrg=0.0;
	 clrscr();
	 printf("\n\nenter the no. of elements\t\t");
	 scanf("%d",&n);
	 printf("\n\nenter %d elements:\n\n",n);
	 for(i=0;i<n;i++)
	 {
	 printf("\nenter the element no. %d :\t",k);
	 scanf("%d",&a[i]);
	 printf("\n");
	 k++;
	 }
	 for(i=0;i<n;i++)
	 {
	 printf("\n %d",a[i]);
	 sum=sum+a[i];
	 }
	 avrg=(float)sum/n;
	 printf("\naverage=%.2f",avrg);
	 getch();
	}



