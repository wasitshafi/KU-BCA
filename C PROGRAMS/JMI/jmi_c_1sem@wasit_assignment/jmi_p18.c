//
//jmi_p18.c on 20-08-18
//
//programe to determine perfect no's
#include<stdio.h>


int main()
{
	int num, rem, sum = 0 ,i;
	
	printf("\nEnter an integer:\t");
	scanf("%d", &num);
	
	if(num < 1)
    {
   	 printf("\nInvalid input...!");
   	 return -1;	
	}	
	else
	{
	for(i = 1 ; i < num ; i++)
	{
	     if(num % i == 0)
		 sum = sum + i;		
	}
	
	if(sum == num)
	 printf("\n%d is a Perfect number.", num);
	else if(sum < num)
	 printf("\n%d is a Deficient number.", num);
	else
     printf("\n%d is a Abundant number.", num);	
   }
   return 0;
}
