#include<stdio.h>
#include<conio.h>
void main()
{
int count(int a);
int num;
clrscr();
printf("\nenter the value of n:\t");
scanf("%d",&num);
clrscr();
printf("reverse counting from %d is follows:\n\n",num);
count(num);
getch();
}
int count(int a)
{
if(a==0)
return 0;
printf(" %d ",a);
count(a-1);
}
