#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

int str_to_int(char *str)
{
	int result = 0;


//  while( *str != EOF && isdigit(*str))
	//or
	while( *str != EOF && *str >= 48 && *str <= 57)
	{
		result = result * 10 + (*str - '0');
		str++;
	}
	return result;

}

int main()
{
	char str[100];

	assert(str_to_int("342") == 342);
	assert(str_to_int("0") == 0);
	assert(str_to_int("3abc") == 3);
	assert(str_to_int("abd23") == 0);

	return 0;
}
