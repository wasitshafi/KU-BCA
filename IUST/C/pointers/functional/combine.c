//
//combine.c
//
//programe to show ..

#include <stdio.h>

typedef int (*FUNC)(int);

int square(int x)
{
	return x * x;
}

int inc (int x)
{
	return ++x;
}

int combine (int num, FUNC arr[], int count)
{
	for(int i = 0; i < count; i++)
	{
		num = arr[i](num);
	}
	return num;
}

int main()
{
	int num;
	FUNC arrfun[] = {square,inc};

	printf("\nEnter an no.");
	scanf("%d",&num);
	printf("After squaring and incrementing to %d , it becomes %d. ",num,combine(num, arrfun,2));



	return 0;
}
