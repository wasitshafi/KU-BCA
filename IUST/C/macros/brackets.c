//
//brackets.c
//
//programe for basic macro
#include <stdio.h>

#define put_data(x) x + x * x
#define put_data2(x)  (x + x) * x
#define printstar for(int i = 0; i <= 20; i++) printf("*");
int main()
{
	int x = 10;

	printf("put_data(x) = %d.\n", put_data(x));
	printf("put_data2(x) = %d.\n", put_data2(x));
	printstar


}
