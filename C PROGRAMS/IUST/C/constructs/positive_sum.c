#include <stdio.h>
#include <stdlib.h>

int get_positive_sum(int count)
{
    int num, sum = 0, i;
    printf("\nEnter %d integers:\n\n", count);

    for (i = 0;i < count;i++)
    {
        printf("\n%d > ", i+1);
        scanf("%d", &num);

        if(num < 0 )continue;

        sum += num;
    }

    return sum;
}

int main()
{
    int count;
    int sum;
    printf("\nEnter number of terms to be added:\t");
    scanf("%d", &count);

    printf("\nSum of positive integers is :\t %d\n\n", get_positive_sum(count));
    return 0;

}
