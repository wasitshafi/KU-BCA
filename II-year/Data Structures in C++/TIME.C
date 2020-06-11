#include<stdio.h>
#include<conio.h>
#include<time.h>
#include<stdlib.h>
void main()
 {
  int i;
  double total_time;
  clock_t start,end;
  start=clock();
  srand(time(NULL));
  for(i=0;i<25000;i++)
  {
  printf("\nrandom_number[%d]=%d",i+1,rand());
  }
  end=clock();
  total_time=((double) (end-start))/CLK_TCK;
  printf("\n\ntime taken to printf 25,0000 random number is %.2f seconds",total_time);
  getch();
  }