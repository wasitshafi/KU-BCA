#include<stdio.h>
#include<conio.h>
void main()
{
 int num,temp;
 printf("enter limit:\t");
 scanf("%d",&num);
 temp=num;
 while(num)
 {
   printf("\n");
  num--;
  }
  while(temp)
  {
   printf("%d\b",temp);
   temp--;
  }
getch();
}
