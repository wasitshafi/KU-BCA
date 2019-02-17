//
// square.c
//
// this programe will not terminate untill user gives num = 0
#include <stdio.h>
#include <stdlib.h>

void prompt(void)
{
	printf("\nEnter a number :\t ");
	return;
}

int get_num(void)
{
	int num;

	scanf("%d", &num);
	return num;
}

int put_square(int num)
{
	if (num < 0)
		return -(num * num);
	else
		return num * num;
}

int main()
{
	int num;

	for(prompt(); num = get_num(); prompt())
	{
		printf("Square of %d is :\t %d .\n\n",num, put_square(num));
	}

	return 0;
}
