#include<stdio.h>
#include<conio.h>
#define flag 30
void main(){
 int a=10,b=20,c;
 clrscr();
  printf("\n\nc prog. for '#ifdef'\n");
  c=flag;
  printf("c=%d\t",c);
 #undef flag;
 #ifdef flag
 a=a+1,b+=1,; /*statements b/w #ifdef flag and #endif is not executed*/
 printf("a=%d\tb=%d\n",a,b);
 #endif
 a=a--,b--;
 printf("\na=%d\tb=%d\n",a,b);
 printf("\nprograme complete.");
 getch();
 }