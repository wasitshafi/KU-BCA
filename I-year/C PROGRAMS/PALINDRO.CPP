#include<stdio.h>
#include<conio.h>
void main()
 {
  long n,n1,rev_n=0,dig=0;
  clrscr();
  printf("\n\nenter the numbers:\t");
  scanf("%ld",&n);
  n1=n;
  while(n!=0)
  {
   dig=n%10;
   rev_n=(rev_n*10)+dig;
   n=n/10;
  }
  clrscr();
  if(rev_n==n1)
  printf("\n\nthe reverse of %ld, is %ld and it is a palindrome.",n1,rev_n);
  else
  printf("\n\nthe reverse of %ld, is %ld and it is not a palindrome.",n1,rev_n);
  getch();
 }