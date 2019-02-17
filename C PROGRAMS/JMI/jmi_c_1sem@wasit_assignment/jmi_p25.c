// jmi_p25.c on 11-10-18
//
//program to compute GCD of two no
//
#include <stdio.h> 
#include<assert.h>

int gcd(int num1, int num2) 
{ 
    if (num2 == 0) 
        return num1; 
        
    return gcd(num2, num1 % num2);  
} 
  
int main() 
{ 
    int num1, num2;
	
	printf("\nEnter num1:\t");
	scanf("%d", &num1);
	
	printf("\nEnter num2:\t");
	scanf("%d", &num2);
	
	assert( num1 > 0 && num2 > 0);
	 
    printf("\nGCD of %d and %d is %d.", num1, num2, gcd(num1, num2) ); 
    
	return 0; 
} 
