#include<stdio.h>
#include<conio.h>
int * check(void);
void main()
{
int x=9;
int *p;
clrscr();
printf("x=\t%d\n",x);
p=check();
printf("add of p=\t%u\n",p);
printf("value at *p=\t%d\n",*p);
getch();
}
int * check(void)
{
int *ptr;
int a=99;
printf("a=\t%d\n",a);
ptr=&a;
printf("add of ptr=\t%u\n",ptr);
printf("value at add of *ptr=\t%d\n");
return(ptr);
}