#include<stdio.h>
#include<conio.h>
void main()
{
clrscr();
int a;
typedef int nw_name_for_int;
nw_name_for_int b;
printf("\n\nint takes %d bytes\n",sizeof(a));
printf("\nnw_name also takes %d bytes\b",sizeof(b));
long double c;
typedef long double lngdbl; /*here lngdbl is just name of data type*/
lngdbl d;/*now here d is the variable*/
printf("\n\nlong takes %d bytes\n",sizeof(c));
printf("\nlngdbl also takes %d bytes\b",sizeof(d));
long e;     /*e and f has the same data type 'long'but diffrent names*/
typedef lng;
lng f;
e=10,f=10;
printf("\nexf=%ld\tf*e=%ld",(e*f),(f*e)); /*both uses '%ld'*/
getch();
}
