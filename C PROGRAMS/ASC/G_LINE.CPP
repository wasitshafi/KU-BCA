#include <graphics.h>
#include <stdio.h>
#include <conio.h>
int main(void)
{
   int gdriver=DETECT,gmode;
   int midx,midy;
   initgraph(&gdriver,&gmode,"C:\\TC\\bgi");
   midx=getmaxx()/2;
   midy=getmaxy()/2;
   setcolor(WHITE);
   line(100,100,300,100);/*horizantal line*/
   line(midx,midx,midx,midy);
   getch();
   closegraph();
   return 0;
}
