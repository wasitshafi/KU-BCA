#include<stdio.h>
#include<conio.h>
void main()
 {
  long i=0,n,n1,dig=0;
  clrscr();
  printf("\n\nenter the numbers:\t");
  scanf("%ld",&n);
  n1=n;
  while(n!=0)
  {
   dig=n%10;
   i++;
   n=n/10;
  }
  printf("\n\nthe length of given numbers %ld is %ld digits",n1,i);
  getch();
 }