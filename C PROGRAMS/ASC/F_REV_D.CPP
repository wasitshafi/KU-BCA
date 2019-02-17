#include<stdio.h>
#include<conio.h>
void main()
{
int rev(int a);
int n,r_dig;
clrscr();
printf("\n\nenter the number");
scanf("%d",&n);
r_dig=rev(n);
clrscr();
if(n==r_dig)
printf("\n\nthe reverse of %d is %d & its a palindrome number.",n,r_dig);
else
printf("\n\n43the reverse of %d is %d & its not a palindrome number.",n,r_dig);

getch();
}
int rev(int a)
{
int rem,sum=0;
while(a!=0)
{
rem=a%10;
sum=(sum*10)+rem;
a=a/10;
}
return(sum);
}