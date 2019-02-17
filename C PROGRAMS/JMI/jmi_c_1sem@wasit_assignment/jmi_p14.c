//
//jmi_p14.c on 20-08-18
//
//programe to find all prime divisors of number
#include<stdio.h>
#include<math.h>


void check_prime(int num)
{
	int i, is_prime = 1;	
		
	 for(i = 2; i <= sqrt(num); i++)
	    if(num % i == 0)
		{
		 is_prime = 0;
		 break;
        }
	if(is_prime) printf("%d\t", num);
}

int main()
{
	int num, i = 1;
	
	printf("\nEnter a integer greater than 1 :\t");
	scanf("%d", &num);
	
	if(num <= 1)
	{
	 printf("\nInvalid input...!");
	 return -1;
	}	
	else
	{
	 printf("\nPrime divisors of %d are:\t", num);

	 for(i = 2; i <= num; i++)
	 	 if(num % i == 0) check_prime(i);
    }

   return 0;
}
