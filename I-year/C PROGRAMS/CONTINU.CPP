#include<stdio.h>
#include<conio.h>
void main()
{
int n,num,sum=0,i=0,k=1;
float avg=0.0;
clrscr();
printf("\n\nenter the value of n :\t");
scanf("%d",&n);
printf("\n\nenter any %d positive numbers:\n",n);
while(i<n)
{
printf("\nenter value no.%d:\t",k);
 scanf("%d",&num);
 if(num<0)
 {
 printf("\n\nnegative numbers not allowed !! please enter any positive number");
 continue;
 }
 sum=sum+num;
 i++;
 k++;
}
avg=sum/n;
printf("\n\nthe sum of natural numbers are=%d \n avegrage of given posotive numbers is =%.2f",sum,avg);
getch();
}