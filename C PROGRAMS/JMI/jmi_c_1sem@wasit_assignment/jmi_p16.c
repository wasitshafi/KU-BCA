//
//jmi_p16.c on 10-08-18
//
//programe to computer first N fibonacci series
#include<stdio.h>
#include<conio.h>
int main()
{
	 long int n, term, term1, term2, i;
	
    term1 = 0;
    term2 = 1;
    	 
	printf("\nEnter no. of terms :\t");
	scanf("%ld", &n);
	
	if( n > 0 )
	{
		
 	 for(i = 0;i < n;i++)
	 {
		term = term1 + term2;
		printf("%ld \t", term);
        
		term1 = term2;
		term2 = term;		
 	 }
    }
	else
		printf("\nInvalid input....!");
	   
	getch();
	return 0;
}
