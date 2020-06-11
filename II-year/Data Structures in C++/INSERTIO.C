#include<stdio.h>
#include<conio.h>
void main()
 {
  int a[10],i,n1,n,term;
  clrscr();
 printf("\n enter the no. of elements");
 scanf("%d",&n);
 n1=n;
 clrscr();
 printf("\n\nenter %d elements in ascending order(e.g:1,3,5....):\n\n\n",n);
 for(i=0;i<n;i++)
  {
   scanf("%d",&a[i]);
  }
 printf("enter 1 new element element:\t");
 scanf("%d",&term);

  while(a[n]>=term && n>=0)
   {
    a[n+1]=a[n];
    n--;
   }
  n++;
  a[n]=term;
  printf("\n\nafter inserting '%d', elements are as follows:\n",term);
  for(i=0;i<=n1;i++)
  printf("%d\n",a[i]);  /* printing all elements*/
  getch();
  }