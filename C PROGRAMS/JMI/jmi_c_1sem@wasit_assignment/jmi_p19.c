//
//jmi_p19.c on 20-08-18
//
//programe to print prime no's upto n

#include<stdio.h>
#include<math.h>

void check_prime(int num)
{
	int i;
	int is_prime = 1;
	
   for(i = 2 ; i <= sqrt(num) ; i++)
   {
   	if(num % i == 0)
   	{
   		is_prime = 0;
   		break;
	}	
   }
   
   if(is_prime)
   
   	printf("%d\t", num);
   
}
int main()
{
	int num, i;
	
	printf("\nEnter a integer greater that 1:\t");
	scanf("%d", &num);
	
	if(num <= 1 )
	{
		printf("\nInvalid input....!\n\n");
	    return -1;    
	}
	else
	{
		printf("\nPrime no's upto %d are as :", num);
		
        for(i = 2; i <= num ; i++)
		 check_prime(i);
	
	}
 return 0;
}
