#include<stdio.h>
#include<conio.h>
#include<string.h>
void main()
 {
  char a[100],b[100];
  int n1,n2,i,temp;
  clrscr();
  printf("\n\nenter any two strings\n");
  printf("1. ");
  gets(a);
  printf("\n2. ");
  gets(b);
  n1=strlen(a);
  n2=strlen(b);
  printf("\n\n1. given strings are as follows:\t");
  for(i=0;i<+n1;i++)
  {
  printf("%c",a[i]);
  }
  printf("\n\n2. given strings are as follows:\t");
  for(i=0;i<=n2;i++)
  {
  printf("%c",b[i]);
  }
  for(i=0;i<n1;i++)
  {
  if(n1==n2&&a[i]==b[i])
  temp=1;
  else
  temp=0;
  }
  if(temp==1)
  printf("\n\n3. these two strings are same.");
  else
  printf("\n\n3. these two strings are not same.");
  getch();
}
