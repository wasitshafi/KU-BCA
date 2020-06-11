#include<stdio.h>
#include"conio.h"
#define a 10
void main()
{
int b;
clrscr();
printf("\nprograme for #undef\n\n");
b=a;
printf("%d",b); /*till here there is no error in the programe*/
#undef a/*undefining marco 'a'*/
b=a; /*re-assigning marco but here the marco is now undefined so it must
shows error,if you cut b=a;(simply by //b=a;) then the prog. will run*/
printf("%d",b);/*'b' is valid but 'a' which is assigning to 'b' is not valid*/
getch();
}