//
// make_functions.c
//
// A macro creating functions!
//
#include <stdio.h>

#define put_data(x) void say_ ## x(char name[]) \
	{ \
		printf( # x " %s\n", name); \
	} \

int main()
{
	const int count = 3;
	char names[4][20] = {
		{"Wasit shafi"},
		{"Mustafa basit"},
		{"Danish haneef"},
		{"Numaan bilal"}
	};


	put_data(hello);
	put_data(goodbye);

	for(int i = 0; i <= count; i++)
	{
		say_hello(names[i]);
		say_goodbye(names[i]);
		printf("\n\n");
	}







	return 0;
}
