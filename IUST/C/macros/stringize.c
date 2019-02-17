//
//stringify.c
//
//A programe to show how to stringify
#include <stdio.h>

#define print(x) printf ("%s = %d\n", # x, x)

int main()
{
	int x =10;
	int val = 20;
	int num = 1234;


	print(x);
	print(val);
	print(num);

	return 0;

}
