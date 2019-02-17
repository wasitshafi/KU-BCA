#include<stdio.h>
#include<conio.h>
void main()
 {
  int n1,n2,res,temp1,temp2;
  int gcd(int *a,int *b);
  clrscr();
  printf("\n\nenter any two positive number:\n");
  scanf("%d%d",&n1,&n2);
  temp1=n1;
  temp2=n2;
  res=gcd(&n1,&n2);
  printf("\nthe gcd of given no. %d and %d is :\t%d\n",temp1,temp2,res);
  printf("\nthe lcm of given no. %d and %d is :\t%d\n",temp1,temp2,(n1*n2)/res);
  getch();
  }
  gcd(int *a,int *b)
  {
  int rem;
  rem=*a%*b;
  while(rem!=0)
  {
  *a=*b;
  *b=rem;
  rem=*a%*b;
  }
  return(*b);
  }


