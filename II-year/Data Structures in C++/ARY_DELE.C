#include<stdio.h>
#include<conio.h>
#include<stdlib.h>
void main()
 {
  int ary[20],i,n,key,temp,flag=0;
  clrscr();
  printf("\nenter the no. of elements:\t");
  scanf("%d",&n);
  clrscr();
  printf("\n you have to enter %d elements in ascending order\n\n",n);
  for(i=0;i<n;i++)
   {
    printf("enter element no %d :\t",i+1);
    scanf("%d",&ary[i]);/*scan all elements*/
   }
 //clrscr();
   printf("\nenter key element for deletion:");
   scanf("%d",&key);
 for(i=0;i<n;i++)
    {
     if(key==ary[i])
      {
       flag=1;
       while(i<n)
       {
	ary[i]=ary[i+1];
	i++;
       }
       break;
      }
    }
    if(flag==0)
       printf("\nelement not found....!");
    else
    {
      printf("after deletion sorted elements are as:");
      for(i=0;i<n-1;i++)
       {
	printf("\n%d",ary[i]);
       }
     }
  getch();
 }