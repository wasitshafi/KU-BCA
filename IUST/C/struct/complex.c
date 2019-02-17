//
//complex.c
//
//A programe to understand basics of structure
#include <stdio.h>
#include <stdlib.h>

struct complex {
	int real;
	float img;
};

typedef struct complex complex;

void get_data (complex *temp)
{
	printf("Enter real part:\t");
	scanf("%d", &temp->real);  // why '&' here when its  itself a address  // Q pending

	printf("Enter img. part:\t");
	scanf("%2f", &temp->img);

	return;
}

void put_data (complex temp)
{
	printf("complex no : %d + %.2f i\n", temp.real, temp.img );

}

int main()
{

	complex num1, num2, num3;

	get_data(&num1);
	get_data(&num2);

	put_data(num1);
	put_data(num2);
}
