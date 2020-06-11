#include"stdio.h"
#include"conio.h"
#define value 20
void main()
{
int a=10,b=20;
clrscr();
printf("\n\nprograme of #if,#else and #endif\n\n");
#if value>10
printf("\nvalue is greater than 10\n");
a=a+5;       /*no {
		     } is requried */
b+=5;
printf("\nvalues are a=%d\tb=%d\n",a,b);
#else
printf("\n\nvalue is less than 10\n");
a=a-5;                       /*no {
				     } is requried */
b=b-5;
printf("\nvalues are a=%d\tb\%d\n",a,b);
#endif
printf("\nprograme completed");
getch();
}
