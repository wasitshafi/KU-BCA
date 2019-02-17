#include<stdio.h>
#include<conio.h>
int a,b=5;       /* here by defualt a=0*/
void main()
{
void fun_1(void);
void fun_2(void);
clrscr();
printf("\n\ninside main values are :\ta=%d\tb=%d\n",a,b);
fun_1();
fun_2();
getch();
}
void fun_1(void)
{
 printf("\n\ninside fun 1 values are:\ta=%d\tb=%d\n",a,b);
}
 void fun_2(void)
 {
 a=2;/*here is local variable with same name as global,whenever there is a
  conflict b/w local & global var. at that time local variable get precedence
  so local var. is executed*/
 printf("\n\ninside fun 2 values are;\ta=%d\tb=%d",a,b);
 }
