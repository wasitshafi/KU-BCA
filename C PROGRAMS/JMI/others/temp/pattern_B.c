//
//
//
//
#include<stdio.h>

int main()
{
	int i, j, lines;
	
	printf("\nEnter no of lines:\t");
    scanf("%d", &lines);

    if(lines < 1)
    {
    	printf("\nInvalid input...!");
    	return -1;
	}
    
    for(i = 1; i <= lines; i++)
    {
    	for(j = 1;j <= i; j++)
    	{
    		printf("%d", i);
		}
	 printf("\n");
	}
   	return 0;
}
