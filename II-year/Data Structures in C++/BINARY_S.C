/*note: binary search is more efficient than linear search because for about
array of 1000000(10 lakh) elements ,the maximum number of comparisons requried
to find an element would only be 20*/
#include<stdio.h>
#include"conio.h"
#define size 20
binary_search(int arry[],int n,int key);
void main()
 {
  int arry[size],n,key,i,flag;
  clrscr();
  printf("\n\nenter the no. of elements:\t");
  scanf("%d",&n);
  clrscr();
  printf("\nyou have to enter  %d elements in increasing order:\n",n);
  for(i=0;i<n;i++)
  {
  printf("\nenter the element no. %d:\t",i+1);
  scanf("%d",&arry[i]);
  }
  clrscr();
  printf("\nenter the key.");
  scanf("%d",&key);
  flag=binary_search(arry,n,key);
  if(flag==-1) /* if the element not found it return value -1*/
  printf("\n%d is not found in the array\n",key);
  else
  printf("\n%d is found at position %d",key,flag+1);
  getch();
}
int binary_search(int arry[],int n,int key)
{
 int low=0,high=n-1,mid;
 while(low<=high)
 {
  mid=(low+high)/2;
  if(arry[mid]==key)
   return mid;

  if(key>arry[mid])
  low=mid+1;
  else
  high=mid-1;
 }
 return -1;/*return value -1 if not found*/
}