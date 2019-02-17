//
//shadow.c
//
//A programe to show global, local & block scope

#include <stdio.h>
#include <stdlib.h>

int x = 10;
int main()
{
	printf("In main() X (global) = %d.\n", x);

	int x = 20;

	printf("In main() X (local) = %d.\n", x);

	{
		int x = 30;

		printf("In main() -> In block X (block) = %d.\n", x);

	}



}
