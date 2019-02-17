//
//return_pointer.c
//
//program to returning pointer from function
#include <stdio.h>
#include <stdlib.h>

int *init_int()
{
	int *init;

	init = malloc(sizeof(int));

	if(!init)
	{
		printf("\nMemory allocation error....!\n");
		fflush(stdout);
		sleep(2);
		exit(0);
	}

	return init;
}

int main()
{

	int *x = init_int();

	printf("Enter an number:\t");

	scanf("%d", x);

	printf("\nYou have entered %d.", *x);

}
