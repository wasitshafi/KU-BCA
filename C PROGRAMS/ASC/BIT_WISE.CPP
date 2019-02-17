#include"stdio.h"
#include"conio.h"
void main()
{
int n,s;
char temp;
clrscr();
printf("enter the number:\t");
scanf("%d",&n);
printf("\nenter the no. of shifts:\t");
scanf("%d",&s);
printf("\npress 'r' for right shift 'l' for left shift:\t ");
temp=getch();
if(temp=='r')
{
n=n>>s;
printf("\nafter right shifting by %d value of n=%d",s,n);
}
else
{
n=n<<s;
printf("\nafter left shifting by %d value of n=%d",s,n);
}
getch();
}
