//
//jmi_p39.c on 11-11-18
//
//programe to find maximum element using recursion

#include<stdio.h>
#include<stdlib.h>
#include<assert.h>

int max_element(int *arr, int count , int max )
{
	static int i = 0;

	if( !count )
		return max;
	else
	{
		if( arr[i] > max)
		 max = arr[i];
		 
	  i++;
	  max_element(arr, --count, max);
	}
	
}

int main()
{
	int *arr, n, max, i;
	
	printf("\nEnter no of elements :\t");
	scanf("%d", &n);
	
	assert( n > 0);
	
	arr = (int *)malloc(n * sizeof(int));
	
	assert (arr != NULL);
	
	for( i = 0 ; i < n ; i++)
	{
		printf("\n%d > ", i + 1);
		scanf("%d", arr + i);
	}
	
	
	printf("\nGiven array is :\n");
	
	for( i = 0 ; i < n ; i++)
	{
		printf("\n%d > %d ",i + 1 , arr[i]);
	}
	
	printf("\n\n");
	
	max = max_element(arr, n, arr[0]);
	
	printf("\nMaximum element is : \t %d.", max);
	
	return 0;
}
