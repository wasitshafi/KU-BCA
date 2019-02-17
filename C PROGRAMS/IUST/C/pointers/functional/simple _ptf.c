//
//simple_ptf.c
//
//programe to show basics of pointer to a function

#include <stdio.h>

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

	int (*ptf1)(int); //ptf1 is a pointer which can point to any function which takes 1 int argument and also returns an int
	int (*ptf2)(int, int); //ptf2 is a pointer which can point to any function which takes 2 int argument and also returns an int

	printf("Enter value of x:\t");
	scanf("%d", &x);
	ptf1 = inc; // assigning address of function inc to a pointer var. ptf1 which can only point to func. which takes 1 int arg. and returns an int.
	printf("Value of x++ is = %d.\n", ptf1(x));

	printf("\nEnter value of x:\t");
	scanf("%d", &x);
	ptf1 = sqr;
	printf("Square of x  is = %d.\n", ptf1(x));

	printf("\nEnter value of x:\t");
	scanf("%d", &x);
	ptf1 = cube;
	printf("Cube of x is = %d.\n", ptf1(x));


	printf("\nEnter value of x:\t");
	scanf("%d", &x);
	printf("\nEnter value of y:\t");
	scanf("%d", &y);
	ptf2 = add;
	printf("Sum of x  and y is = %d.\n", ptf2(x, y));


	printf("\nEnter value of x:\t");
	scanf("%d", &x);
	printf("\nEnter value of y:\t");
	scanf("%d", &y);
	ptf2 = diff;
	printf("Difference  between x  and y is = %d.\n", ptf2(x, y));


	printf("\nEnter value of x:\t");
	scanf("%d", &x);
	printf("\nEnter value of y:\t");
	scanf("%d", &y);
	ptf2 = mul;
	printf("Multiplication of x  and y is = %d.\n", ptf2(x, y));

	return 0;
}
