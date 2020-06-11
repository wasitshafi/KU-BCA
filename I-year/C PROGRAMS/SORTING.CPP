#include<stdio.h>
#include<conio.h>
void main()
 {
  int a[10],i,len=7,n=len,term=5;
  clrscr();
  a[0]=1;
  a[1]=2;
  a[2]=3;
  a[3]=4;
  a[4]=6;
  a[5]=7;
  a[6]=8;
  a[7]=9;
  while(a[len]>=term)
   {
    a[len+1]=a[len];
    len=len--;
   }
  len=len++;
  a[len]=term;

  for(i=0;i<=n+1;i++)
    printf("%d\n",a[i]);/* printing all elements*/

 getch();
  }



