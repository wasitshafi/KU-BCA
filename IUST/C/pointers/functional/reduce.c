//
//reduce.c
//
// programe to create reduce functions
#include <stdio.h>
#include <stdlib.h>

typedef int (*REDUCE)(int, int);

int sum(int prev, int curr)
{
	return prev + curr;
}

int squares(int prev, int curr)
{
	return prev + (curr * curr);
}

int reduce(REDUCE func, int arr[8], int count)
{
	int res = 0;

	for (int i =0; i < count; i++)
	{
		res = func(res, arr[i]);
	}

	return res;
}

int main()
{
	int arr[9] = {1,2,3,4,5,6,7,8};

	printf("Sum of array elements is :\t%d.\n", reduce(sum, arr, 8));
	printf("Sum of squares of array elements is :\t%d.\n", reduce(squares, arr, 8));

	return 0;
}
