//jmi_p31.c
//
//programe to search an element using linear search
//
#include<stdio.h>
#include<assert.h>

int main()
{ 
	int arr[100], n, i, key, flag = 0;
	
	printf("\nEnter no of values:\t");
	scanf("%d", &n);

	assert(n > 0);
		
	printf("\nEnter %d values:", n);
	
	for(i = 0; i < n; i++)
	
	  printf("\n%d > ", i + 1),scanf("%d", &arr[i]);
    
	
	printf("\nValues are as follows:");
	
	for(i = 0; i < n; i++)
	{
		printf("\n%d > %d", i + 1, arr[i]);
	}	
	
	printf("\nEnter value to search:\t");
	scanf("%d", &key);
	
	for(i = 0 ; i < n ; i++)
	{
	  if(arr[i] == key)
	 {	 
	    if(!flag)
	    {	 	
	     printf("\nElement(%d) found at index %d",key, i + 1);	    	
         flag = 1;
	     continue;  // as flag is now set so we don't want to print its index again.
	    }

	    if(flag)
	 	 printf(", %d", i + 1);
	 }
    }
    
	printf(".");
		
	if(i > n)
  	 printf("\nElement not found.");

	return 0;
}

