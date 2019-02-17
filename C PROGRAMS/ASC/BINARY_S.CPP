/*note: binary search is more efficient than linear search because for about
array of 1000000(10 lakh) elements ,the maximum number of comparisons requried
to find an element would only be 20*/
#include<stdio.h>
#include"conio.h"
binary_search(int arry[],int n,int key);
void main()
 {
  int arry[100],n,key,i,j,index;
  clrscr();
  printf("\n\nenter the no. of elements:\t");
  scanf("%d",&n);
  clrscr();
  printf("\nyou have to enter  %d elements in increasing order:\n",n);
  for(i=0,j=1;i<n;i++,j++)
  {
  printf("\nenter the element no. %d:\t",j);
  scanf("%d",&arry[i]);
  }
  clrscr();
  printf("\nenter the key.");
  scanf("%d",&key);
  index=binary_search(arry,n,key);
  if(index==-1) /* if the element not found it return value -1*/
  printf("\n%d is not found in the array\n",key);
  else
  printf("\n%d is found at position %d",key,index+1);
  getch();
}
int binary_search(int arry[],int n,int key)
{
int low=0,up=n-1,mid;
while(low<=up)
 {
  mid=(low+up)/2;
  if(key>arry[mid])
  low=mid+1;
  else if(key<arry[mid])
  up=mid-1;
  else
  return mid;
  }
  return -1;/*return value -1 if not found*/
  }

