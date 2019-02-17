#include <stdio.h>
#include <stdlib.h>

int main()
{

  int rem,sum =0,result,temp_num,i;
  int n1,n2;

  printf("\nEnter 2 numbers:\t");
  scanf("%d%d",&n1,&n2);

  result = n1 + n2;

  if(result < 10)
   printf("\nResult is :\t%d",result);
  else{

      while(result >= 10)
      {
         temp_num = result;

          while(temp_num != 0)
          {
          rem = temp_num % 10;
          sum = sum  + rem;
          temp_num = temp_num / 10;
          printf("-%d-*%d*",rem , sum);
          }
          result = sum;
          sum = 0;
      }

  }

  printf("\nResult is :\t%d",result);
    return 0;
}
