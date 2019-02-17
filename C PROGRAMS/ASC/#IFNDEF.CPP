#include"stdio.h"
#include"conio.h"
void main(){
 int a=10,b=20;
 clrscr();
 #ifndef mrco
 printf("\if the marco is not defined then both the statement b/w #ifndef to #endif will be executed.\n");
 a--,b--;
 #endif
 printf("\na=%d\tb=%d\n",a,b);
 printf("\nprograme complete");
 getch();
 }