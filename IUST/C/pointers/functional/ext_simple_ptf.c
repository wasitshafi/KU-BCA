//
//ext_simple_ptf.c
//
//programe to show basics of pointer to a function and array storing functions

#include <stdio.h>

typedef int (*FUNC1)(int);
typedef int (*FUNC2)(int,int);

int inc(int x)
{
	return ++x;
}

int sqr(int x)
{
	return x * x;
}

int cube(int x)
{
	return x * x *x;
}
/****************************************************************************/

int add(int x, int y)
{
	return x + y;
}

int diff(int x, int y)
{
	return x - y;
}

int mul(int x, int y)
{
	return x * y;
}


// note Increment to this prog. can be to store functions address in a array

int main()
{
	int x, y;

	FUNC1 arr1[] = {inc,sqr,cube};
	FUNC2 arr2[] = {add,diff,mul};

	system("clear");

	for(int i =0; i< 3; i++)
	{
		printf("Enter value of x:\t");
		scanf("%d", &x);

		switch(i)
		{
		case 0:
			printf("\nvalue of a++ is : \t%d.\n\n",arr1[i](x));
			break;
		case 1:
			printf("\nvalue of x square is : \t%d.\n\n",arr1[i](x));
			break;
		case 2:
			printf("\nvalue of x cube is : \t%d.\n\n",arr1[i](x));
			break;
		}
	}

	system("clear");

	for(int i =0; i< 3; i++)
	{
		printf("\nEnter value of x:\t");
		scanf("%d", &x);
		printf("\nEnter value of y:\t");
		scanf("%d", &y);

		switch (i)
		{
		case 0:
			printf("\nSum of x & y is : \t%d.\n\n",arr2[i](x,y));
			break;
		case 1:
			printf("\nDifference between x & y is  : \t%d.\n\n",arr2[i](x,y));
			break;
		case 2:
			printf("\nMultiplication of x & y is : \t%d.\n\n",arr2[i](x,y));
			break;
		}
	}

	return 0;
}
