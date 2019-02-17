//
// check_os.c
//
// A program to see whether a programe is compiled on windows or on other platforms
//
#include <stdio.h>

int main()
{
#ifdef WIN32
	printf("You are on windows.\n");
#else
	printf("You are not on windows.\n");
#endif
}
