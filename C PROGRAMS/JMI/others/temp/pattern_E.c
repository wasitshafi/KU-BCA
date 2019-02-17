//
//
//
//
#include<stdio.h>

int main()
{
	int i, j, bool, lines;
	
	bool = 1;
	
	printf("\nEnter no of lines you want:\t");
	scanf("%d", &lines);
	
	for(i = 1; i <= lines; i++)
	{
		for(j = 1; j <= i; j++)
		{
			printf("%d", bool);
			bool = !bool;
		}
		printf("\n");
	}
	return 0;
}
