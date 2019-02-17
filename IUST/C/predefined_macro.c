#include <stdio.h>

int main()
{
	printf("\nDate : \t%s.", __DATE__);
	printf("\nTime : \t%s.", __TIME__);
	printf("\nFile : \t%s.", __FILE__);
	printf("\nline (current line no.): \t%d.", __LINE__);
	printf("\nComplier  version: \t%s.", __STDC_VERSION__);

	return 0;
}
