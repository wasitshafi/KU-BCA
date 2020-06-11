#include<stdio.h>
#include<conio.h>
void main()
 {
  int ary[50],ev[50],od[50],i,j=0,k=0,n;
  clrscr();
  printf("\n enter the size of array:\t");
  scanf("%d",&n);
  clrscr();
  for(i=0;i<n;i++)
  scanf("%d",&ary[i]);
  for(i=0;i<n;i++)
	    {
  if(ary[i]%2==0)
  {
  ev[j]=ary[i];
  j++;
  }
  else
  {
  od[k]=ary[i];
  k++;
  }
	     }
  clrscr();
  printf("\n\neven array is follows:\n");
  for(i=0;i<j;i++)
  printf("%d\t",ev[i]);
  printf("\n\nodd array is follows:\n");
  for(i=0;i<k;i++)
  printf("%d\t",od[i]);
  getch();
  }