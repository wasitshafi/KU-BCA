#include"stdio.h"
#include"conio.h"
#define value 10
void main()
{
int a=10,b=20;
clrscr();
printf("\programe for #if,#else and #endif");
#if value>10
printf("\nvalue is greater than 10\n\n");
a=a+5;       /*no {
		     } is requried */
b+=5;
printf("\n\nvalues are a=%d\tb=%d\n\n",a,b);
#else
printf("\n\nvalue is less than or equal to 10\n\n");
a=a-5;                       /*no {
				     } is requried */
b=b-5;
printf("\n\nvalues are a=%d\tb=%d\n\n",a,b);
#endif
printf("\nprograme completed");
getch();
}
