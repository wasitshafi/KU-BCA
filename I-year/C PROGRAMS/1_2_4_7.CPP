#include<stdio.h>
#include<conio.h>
void main()
{
int term,n,sum=1,i=0;
clrscr();
printf("\n\nenter the number of terms tobe generated:\t");
scanf("%d",&n);
printf("\n\n");
while(i<n)
 {
 sum=sum+i;
 printf("%d\t",sum);
 i++;
 }
 getch();
 }