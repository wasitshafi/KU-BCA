//
//pointer_to_int.c
//
//program to swap two values using pointer to int
#include <stdio.h>
#include <stdlib.h>

void swap(int *p1, int *p2)
{
	int temp;

	temp = *p1;
	*p1 = *p2;
	*p2 = temp;

}

int main()
{
	int n1, n2;
	int *p1, *p2;

	system("clear");
	printf("Enter an integer:\t");
	scanf("%d", &n1);

	printf("\nEnter an integer:\t");
	scanf("%d", &n2);

	p1 = &n1;
	p2 = &n2;

	system("clear");

	printf("Before calling swap() values are:\n");
	printf("num1 = %d \t num2 = %d \n", *p1, *p2);

	swap(p1,p2);

	printf("\nAfter calling swap() values are:\n");
	printf("num1 = %d \t num2 = %d\n ", *p1, *p2);
}
