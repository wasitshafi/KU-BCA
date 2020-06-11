#include<stdio.h>
#define basic "prog for macro"
#include<conio.h>
int glb=19;
void main()
{
static int d=10;
	void funct();
	clrscr();
       funct();
       funct();
       funct();
       funct();
       printf("%d\t",glb);
       getch();
}
void funct()
{
int a=10;
static int s1=10,s2;
printf("a=%d\ts1=%d\ts2=%d\n",a,s1,s2);
//printf("%d",d);
printf("%d",glb);
a++;

s1++;
s2++;
}