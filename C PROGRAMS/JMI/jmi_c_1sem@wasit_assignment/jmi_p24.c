//
//jmi_p24.c on 25-08-18
//
//programe to compute average of n-array floats by using recursion

#include<stdio.h> 

int main()
{  
   int n;
   printf("\nEnter total of elements want:\t");
   scanf("%d", &n);

   avg(n , n);

   return 0;
}

void avg(int n, int count)
{
	
	static int sum = 0, i = 0, arr[15];
	 
	if(!count)
	{
	    printf("\nAverage is :\t%f",(float)sum/n);    
	    return;	
	}
	else
	{
		printf("\nEnter element %d : \t", i + 1);
		scanf("%d", &arr[i]);
        
		sum = sum + arr[i++];
        avg(n, --count);
 	}
}
