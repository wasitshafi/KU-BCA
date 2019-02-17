#include<stdio.h>
#include"conio.h"
#error compilation is stopped!!!

/*this programe will not run because of that #error stops compilation and
displays the given message.it will not matter that the programe is bug-free
or it has errors*/

void main()
{
clrscr();
printf("\n\nprograme for #error\n\n");
printf("this programe will run only if we cut #error(simply by //#error).");
getch();
}