#include<stdio.h>
#include<conio.h>
void main()
{
 int ary[50],i=0,n;
 printf("no of elem:\t");
 scanf("%d",&n);
  while(i<n)
  {
  scanf("%d",ary[i]);
    if(ary[i]==NULL)
    {
    break;
    }
  i++;
  }

  i=0;
  while(ary[i]!=NULL)
  {
  printf("%d\t",ary[i]);
  i++;
  }
  getch();
 }