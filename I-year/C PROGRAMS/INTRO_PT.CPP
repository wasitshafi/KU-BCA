#include<stdio.h>
#include<conio.h>
void main()
{
 int a=10,*ptr,b=20,*ptr2;
 clrscr();
 ptr=&a;
 ptr2=&b;
 *ptr=*ptr+1;
 *ptr2=*ptr2+1;
 printf("\n\nthe value of a is %d and the value of b is %d",*ptr,*ptr2);
 getch();

}