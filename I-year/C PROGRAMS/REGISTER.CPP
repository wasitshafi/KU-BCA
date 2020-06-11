#include<stdio.h>
#include<conio.h>
#include<time.h>
#define limit 10000
void main()
 {
  register int i,sum;
  int n,j;
  time_t being, end;
  time(&being);
  for(j=1;j<=limit;j++)
   {
    for(i=1;i<=50;i++)
    {
    sum+=i;
    }
    i--;
    time(&end);
    printf("tiime required=%0.1fseconds\n",difftime(being,end));
    }
    getch();
    }