#include"stdio.h"
#include"conio.h"
void main()
{
 void fun_n(void);
 fun_n;
 fun_n;    /*calling function_n 4 times. */
 fun_n;
 fun_n;
 getch();
}
 void fun_n(void)
 {
  static int a=10,b; /*here a=10 & by defualt b=0*/
  int c=1;
  printf("\n\nvalues are as :\ta=%d\tb=%d\tc=%d\n\n",a,b,c);
  a++;
  b++;
  c++;
 }
