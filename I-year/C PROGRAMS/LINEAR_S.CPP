#include<stdio.h>
#include<conio.h>
void main()
{
 int a[100],n,i,key,k;
 clrscr();
 printf("\n\nenter the value of 'n' no. of elements:\t");
 scanf("%d",&n);
 clrscr();
 printf("\nyou have to enter %d elements:\n\n",n);
 for(i=0,k=1;i<n;i++,k++)
 {
  printf("\nenter element no %d:\t",k);
  scanf("%d",&a[i]);
 }
 clrscr();
 printf("enter the character which you want to find :\t");
 scanf("%d",&key);
 clrscr();
 for(i=0;i<n;i++)
 {
 if(a[i]==key)
 {
 printf("\n\nsearch successfull.\n\nthe number '%d' is found at element no %d",key,i+1);
 goto end;
 }
 }
 printf("\n\nsearch unsuccessfull.\n\nthe number '%d' is not found from given elements",key);
 end:
 getch();
 }


