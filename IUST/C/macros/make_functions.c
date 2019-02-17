//
// make_functions.c
//
// A macro creating functions!
//
#include <stdio.h>

#define put_data(x) void say_ ## x(char* name) \
	{ \
		printf( # x " %s\n", name); \
	} \

int main()
{
	put_data(hello);
	put_data(goodbye);

	say_hello ("wasit");
	say_goodbye ("wasit");

	return 0;
}
