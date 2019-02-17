//
//complex.c
//
//program to allocate memory for structure
#include <stdio.h>
#include <stdlib.h>

typedef struct complex complex;

struct complex {
	int real;
	int img;
};

complex* new_complex(int real, int img)
{
	complex *temp;

	temp = malloc(sizeof(complex));

	if(!temp)
	{
		printf("Memory allocation error...!");
		exit(-1);
	}
	temp->real = real;
	temp->img = img;

	return temp;

}

complex* add_complex(complex *c1, complex *c2)
{
	//complex *temp = new_complex((c1->real + c2->real),(c1->img + c2->img));
	//return temp;
	//or
	return new_complex((c1->real + c2->real),(c1->img + c2->img));
}

int main()
{
	complex *c1, *c2, *c3;

	c1 = new_complex(5, 10);
	c2 = new_complex(10, 15);
	c3 = add_complex(c1, c2);

	printf("complex no : %d  + %di", c3->real, c3->img);

	free(c1);
	free(c2);
	free(c3);

	return 0;
}
