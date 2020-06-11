#include<stdio.h>
#include<conio.h>
#define flag 30
void main(){
 int a=10,b=20,c;
 clrscr();
 printf("\n\nc prog. for '#ifdef'\n");
 #ifdef flag
 a=a+1,b+=1;
 c=flag;
 printf("\na=%d\tb=%d\tc=%d\n",a,b,c);
 #endif
 a=a--,b--;
 c=flag;
 printf("\na=%d\tb=%d\tc=%d\n",a,b,c);
 printf("\nprograme complete.");
 getch();
 }
