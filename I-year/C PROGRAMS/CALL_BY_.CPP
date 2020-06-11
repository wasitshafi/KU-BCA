#include<stdio.h>
#include<conio.h>
void main()
{
int b_ptr(int *a, int *b);
int x,y;
clrscr();
printf("\n\n enter the value of a and b\n");
scanf("%d%d",&x,&y);
printf("\n\nthe value of 'a' =%d and 'b'=%d",x,y);
b_ptr(&x,&y);
printf("\n\nafter changing the valueo of 'a' & 'b' by 10 with the help of pointers\n\nnow\n\tthe value of 'a'=%d and 'b'=%d",x,y);
printf("\nthe sum of a=%d and b=%d is =%d",x,y,(x+y));
getch();
}
int b_ptr(int *a,int *b)
{
*a=*a+10;
*b=*b+10;
return 0;
}
