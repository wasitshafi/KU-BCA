//
//
//
//
#include<stdio.h>

int main()
{
	int i, j, n, lines;
	
	printf("\nEnter no of lines:\t");
    scanf("%d", &lines);

    if(lines < 1)
    {
    	printf("\nInvalid input...!");
    	return -1;
	}
    
     n = 2;
    for(i = 1;i <= lines; i++)
    {
    	for(j = 1;j <= i; j++, n++)
    	{
    		printf("%d", n);
		}
	 n--;
	 printf("\n");
	}
   	return 0;
}
