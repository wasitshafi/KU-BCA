#include"stdio.h"
#include"conio.h"
#define value 20
void main()
{
int a=10,b=20;clrscr();
printf("\n\nprograme for #if,#elif and #endif\n");
#if value==10
printf("\nvalue is 10\n");
a=a+5;       /*no {
		     } is requried */
b+=5;
printf("\nvalue are as a=%d\tb=%d",a,b);
#elif value==15
printf("\nvalue is 15\n\n");
a=a+5,b=b+5;
printf("\nvalue are as a=%d\tb=%d",a,b);
#elif value==20
printf("\nvalue is 20\n");
a+=5,b+=5;
printf("\nvalue are as a=%d\tb=%d",a,b);
#endif
printf("\n\nprograme completed");
getch();
}
