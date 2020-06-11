#include<stdio.h>
#include<conio.h>
#include<stdlib.h>
void main()
{
 int a[100],n,i,key,k;
 clrscr();
 printf("\n\nenter no. of elements:\t");
 scanf("%d",&n);
 clrscr();
 printf("\nyou have to enter %d elements:\n\n",n);
 for(i=0,k=1;i<n;i++,k++)
 {
  printf("\nenter element no %d:\t",k);
  scanf("%d",&a[i]);
 }
 clrscr();
 printf("enter keyword:\t");
 scanf("%d",&key);
 clrscr();
 for(i=0;i<n;i++)
 {
 if(a[i]==key)
 {
 printf("\n\nsearch successfull.\n\nelement  '%d' found at location no. %d",key,i+1);
 getch();
 exit(0);
 }
 }
 printf("\n\nsearch unsuccessfull.");
 getch();
 }