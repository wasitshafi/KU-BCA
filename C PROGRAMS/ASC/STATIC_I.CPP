#include<stdio.h>
#include<conio.h>
void main()
{
void fun_n(void);
clrscr();
fun_n();
fun_n(); /*calling fun_n 5 times */
fun_n();
fun_n();
fun_n();
getch();
}
void fun_n(void)
{
static int a,b=10;/*here values are initialized only once
		    by defualt a=0 & b=10
		    and these values retains its pervious state */
int c=1;/* var. c  gets initialized to 1 each 5 times */
printf("\n\nvalues are as follows:\t a=%d\tb=%d\tc=%d\n",a,b,c);
a++;
b++;
c++;
}