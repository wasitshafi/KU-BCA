//
//jmi_p20.c
//
//programe to reverse a number
#include<stdio.h>

int main()
{
  int num, copy_num, reverse_num, rem;
  
  printf("\nEnter a integer:\t");
  scanf("%d", &num);
  
  if(num < 0)
  {
  	printf("\nInvalid input...!");
  	return -1;
  }
  else
  {
   copy_num = num;
  
   while(num)
   {
  	rem = num % 10;
  	reverse_num = (reverse_num * 10) + rem;
   	num = num / 10;
   }
  
   printf("\nReverse of %d is %d.", copy_num, reverse_num);
  }
}
