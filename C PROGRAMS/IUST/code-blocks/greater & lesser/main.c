#include <stdio.h>
#include <stdlib.h>

void get_find_put_data(void)
{
    int x, y, z;

    printf("\nEnter 3 different integers : \t");
    scanf("%d %d %d", &x, &y, &z);

    printf("\n Greatest integer is :\t %d", greater(x, y, z));
    printf("\n Smallest integer is :\t %d", lesser(x, y, z));

}

int lesser(int a, int b, int c)
{
    if (a < b && a < c )return a;
    if (b < a && b < c )return b;
    if (c < a && c < b )return c;
}

int greater(int a, int b, int c)
{
    if (a > b )
    {
      if(a > c)
      {
          return a;
      }
      else
      {
          return c;
      }
    }
    else if(b > c)
    {
        return b;
    }
    else
    {
        return c;
    }
}
int main()
{
  get_find_put_data();
  return 0;
}
