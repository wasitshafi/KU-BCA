//
// concat.c
//
// A programe for concatination using macros
//

#include <stdio.h>

#define magic(x) put_ ## x()

void put_hello(){
	printf("\nHello ");
}
void put_world(){
	printf("world i am wasit.");
}
int main()
{
	magic(hello);
	magic(world);

	return;
}
