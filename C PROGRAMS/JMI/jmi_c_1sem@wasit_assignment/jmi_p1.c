//
//jmi_p1.c on 09-18-18
//
//program to determine num1 is multiple of num2

#include<stdio.h>

int main()
{
 int num1, num2;

 printf("\nEnter a number:\t");
 scanf("%d", &num1);

 printf("\nEnter a number:\t");
 scanf("%d", &num2);
 
  if(num1 % num2 ? 0 : 1)
  
  printf("\n%d is multiple of %d.\n", num1, num2);

 else
 
  printf("\n%d is not multiple of %d.\n", num1, num2);
  
  return 0;
}
