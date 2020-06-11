#include<stdio.h>
#include<conio.h>
void main()
 {
  int arr1[30],arr2[30],arr3[60],i,j,k,n1,n2;
  clrscr();
  printf("\n\nenter the  size of array 1st:\t");
  scanf("%d",&n1);
  clrscr();
  printf("\n\nyou have to enter %d elements for array 1st in ascending oreder.\n\n\n",n1);
  for(i=0;i<n1;i++)
   {
    printf("enter the element no. %d:\t",i+1);
    scanf("%d",&arr1[i]);
  }
  clrscr();
  printf("\nenter the size of array 2nd:\t");
  scanf("%d",&n2);
  clrscr();
  printf("\nyou have to enter %d elements for array 2nd in ascending order.\n\n",n2);
   for(i=0;i<n2;i++)
   {
    printf("enter the element no. %d:\t",i+1);
    scanf("%d",&arr2[i]);
   }
   clrscr();
   printf("after merge sort elements are as follows:\n\n");
   i=0;
   j=0;
   k=0;
   while(i<n1 && j<n2)
   {
    if(arr1[i]<arr2[j])
     arr3[k++]=arr1[i++];
     else
     arr3[k++]=arr2[j++];
   }
   if(i<n1)
   {
    while(i<n1)
     arr3[k++]=arr1[i++];
   }
   else
   {
    while(j<n2)
     arr3[k++]=arr2[j++];
   }
   //printing.....
  for(i=0;i<n1+n2;i++)
   printf("%d ",arr3[i]);
  getch();
 }


