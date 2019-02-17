#include <stdio.h>

int main(void){

	for(int i = 0; i < 100; i++) {
		printf("%d ", i % 6);
	}

	printf("\n");
}
