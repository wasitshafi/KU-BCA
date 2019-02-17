#include <stdio.h>
#include <stdlib.h>

void converge(char *str, char *str2)
{
	int i, j;

	printf("%s\n",str);

	for(i = 0,j = strlen(str2); i <= j; i++,j--)
	{

		str[i] = str2[i];
		str[j] = str2[j];
		printf("%s\n",str);
	}

}

int main()
{
	char str[100] = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx";

	converge(str,"This is test string now i am mad in doing the sis tha");

	return 0;
}
