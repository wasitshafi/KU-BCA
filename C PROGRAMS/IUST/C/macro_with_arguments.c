#include <stdio.h>

#define sum(x, y) ( (x) + (y) )
#define min(a, b) ( a < b ? a : b)

#define printstars {int i; for(i = 0; i < 30; i++) printf("*"); printf("\n"); }

int main()
{
	int a = 10, b = 20, s, min;

	s = sum(a,b);
	printf("Sum of %d and %d is %d.\n", a, b, s);

	min = min(a, b);
	printf("Min(%d %d) = %d.\n", a, b, min);

	printstars;

	return 0;
}
