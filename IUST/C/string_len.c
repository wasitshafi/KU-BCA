
#include <stdio.h>

#define MAX_SIZE 100

int strlen__(char* str)
{
	int i;

	for(i = 0; str[i] != '\0'; i++)

		return i;
}


int main(void){
	char str[MAX_SIZE];

	puts("Enter a string ?");
	gets(str);

	printf("The length of this string is %d\n", strlen__(str));

	return 0;
}
