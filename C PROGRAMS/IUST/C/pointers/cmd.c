//
//cmd.c
//
//programe to print command line arguments
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {

	if (argc)
	{
		printf("Total no. of arguments : %d\n",argc);
		for(int i = 0; i < argc; i++) printf("\n%d > %s\n", i + 1, argv[i]);
	}
	else
		printf("No command line argument.\n");

	return 0;
}
