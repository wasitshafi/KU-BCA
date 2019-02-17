//
//map.c
//
//a programe to ......
#include <stdio.h>
#include <stdlib.h>

typedef int (*MAPPER)(int);

int Squa(int n)
{
	return n * n;
}

int*  map(MAPPER funs,int arr[10], int count)
{
	int* ptr;
	ptr = malloc(count*sizeof(int));

	for(int i = 0; i < count; i++)
	{
		*(ptr + i) = funs(arr[i]);
	}
	return ptr;
}

int main()
{

	int arr[10] = {1,22,3,44,5,66,7,88,9,10};
	int *squ  = map(Squa,arr,10);

	for(int i = 0; i < 10; i++)
	{
		printf("%d > %d\n",arr[i], *(squ + i));
	}



	return 0;
}
