//
// magic_no.c
//
//program to store random no using rand() function
#include <stdio.h>
#include <stdlib.h>

int main()
{
	int magic__no;
	int guess;

	printf("Enter no:\t");
	scanf("%d", &guess);

	magic__no = rand();
	printf("\n\n%d\n\n", magic__no);
	if(guess == magic__no)
	{
		printf("\nCongratulations...");
	}
	else if (guess > magic__no)
	{
		printf("\nWrong ( no. too high)....");
	}
	else
	{
		printf("\nWrong ( no. too low)....");
	}

	return 0;
}
