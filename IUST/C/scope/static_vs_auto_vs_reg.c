//
//static_vs_auto_vs_reg.c
//
//A programe to difference between static, auto, register variables
#include <stdio.h>
void auto_demo(void)
{
	int x = 1;

	x++;
	printf("x = %d\t", x);

}

void static_demo(void)
{
	static int y = 1;

	y++;
	printf("y = %d\t", y);

}

void register_demo(void)
{
	register int z = 1;

	z++;
	printf("z = %d\n", z);
}

#include <stdio.h>
#include <stdlib.h>

int main()
{

	printf("auto    static  register\n\n");
	for(int i = 0; i < 5; i++)
	{
		auto_demo();
		static_demo();
		register_demo();
	}

	return 0;
}
