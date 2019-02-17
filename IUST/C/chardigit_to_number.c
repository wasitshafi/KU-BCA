#include<stdio.h>
#include<stdlib.h>
#include<ctype.h>
#include<assert.h>


int main()
{
  char c;
  int n;
  int i;


  // for(i = 0; i < 127; i++)printf("%c\t%d\n",i,i);

  printf("\nEnter a number(0 - 9):\t");
  scanf("%c", &c);


  if(isdigit(c))
    {
      n = c - 48;
      printf("\nnum = %d",n);
      printf("\n\n%c",n);
    }
  else
    {
      printf("\nInvalid input...!");
    }
  
  return 0;
}
