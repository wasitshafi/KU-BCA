#include <stdio.h>
#include <stdlib.h>
#define MAX_SIZE 10

int main()
{
    int arr[MAX_SIZE][MAX_SIZE], a_ptr;
    int r, c;
    int i, j;

    printf("Enter no. of rows:");
    scanf(" %d ", &r);

    printf("Enter no. of columns:");
    scanf(" %d ", &c);

    for(i = 0; i < r; i++)
    {
        for(j = 0; j < c; j++)
        {
          printf("\na[%d][%d] = ", i + 1, j + 1);
          scanf(" %d ", &arr[i][j]);
        }
        printf("\n");
    }

    printf("\n array elements are as:\n");


    for(i = 0; i < r; i++)
    {
        for(j = 0; j < c; j++)
        {
          printf(" %d \t", arr[i][j]);
        }
        printf("\n");
    }
 return 0;
}
