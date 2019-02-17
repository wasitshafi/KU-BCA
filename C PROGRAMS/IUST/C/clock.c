#include <stdio.h>
#include <time.h>

int main()
{
	int h, m, s = 1;

	h = m = 0;
	system("clear");

	while(1)
	{
		printf("%d : %d : %d", h, m, s);
		fflush(stdout);
		if(s == 60)
		{
			s = 1;
			m++;
		}

		if(m == 60)
		{
			m = 0;
			h++;
		}

		if(h == 24)
		{
			h = 0;
			m = 0;
			s = 0;
		}

		sleep(1);
		s++;
		system("clear");
	}
}
