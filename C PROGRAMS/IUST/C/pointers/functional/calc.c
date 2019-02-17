//
// calc.h
// arr of pointer to a functions
//

#include <stdio.h>
#include <stdlib.h>


typedef int (*ARRPTF)(int,int);
//    or
//int (*ARRPTF[])(int, int) = {sum, sub, divv, mult};  // direct method

int sum(int a, int b)
{
	return a + b;
}
int sub(int a, int b)
{
	return a - b;

}
int divv(int a, int b)
{
	return a / b;

}
int mult(int a, int b)
{
	return a * b;

}

int main()
{
	int choice;
	int x, y;
	ARRPTF arr[] = {sum,sub,divv,mult};


	while(1)
	{
		printf("\n\n1 > Addition.\n");
		printf("2 > Subtraction.\n");
		printf("3 > Division.\n");
		printf("4 > Multiplication.\n\n");
		printf("0 > Exit.\n\n");

		printf("Enter your choice:\t");
		scanf("%d", &choice);

		if(choice == 0)
		{
			exit(0);
		}
		else if(choice >= 1 && choice <= 4)
		{
			printf("\nEnter 2 numbers:\t");
			scanf("%d %d", &x, &y);

			printf("\nResult = %d.", arr[choice-1](x, y));



		}
		else
		{
			//fflush(stdout);
			printf("\nInvalid choice....!\n" );
			sleep(1);
			system("clear");
		}

	}


	return 0;
}
