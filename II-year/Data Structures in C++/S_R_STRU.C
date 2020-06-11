#include<stdio.h>
//#include<conio.h>
struct abc
	{
	 int x;
	 char y[10];
	 struct abc *z;
	 };
 int main()
{
  struct  abc a;
  int *ptr;
  //clrscr();
  ptr=&a.x;
  //clrscr();
  printf("enter number:\t");
  scanf("%d",&a.x);
  printf("enter string:\t");
  scanf("%s",a.y);
  printf("\n\nnum=%d",a.x);
  printf("\nnum=%d",*ptr);
  printf("\nstring=%s",a.y);
  printf("\naddr. of a=\t%u",&a);
  printf("\naddr. of a.x=\t%u",&a.x);
  printf("\naddr. of a.y=\t%u",&a.y);
  printf("\naddr. of ptr=\t%u",&ptr);
  printf("\naddr. of *z=\t%u",&a.z);
  //getch();
return 0;
}
