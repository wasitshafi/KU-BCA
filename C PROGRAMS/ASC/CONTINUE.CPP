#include<stdio.h>
#include<conio.h>
void main()
{
int n,i,sum=0;
clrscr();
printf("\n\nenter the vlaue of 'n':\t");
scanf("%d",&n);
for(i=0;i<=n;i++)
{
if(i==2)
continue;
sum=sum+i;  /*this line is not the part of if statement*/
}
printf("\n\nthe sum of natural numbers upto %d execpt 2 is =%d",n,sum);
getch();
}