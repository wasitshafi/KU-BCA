#include <graphics.h>
#include <stdio.h>
#include <conio.h>
int main(void)
{
   int gdriver=DETECT,gmode;
   int midx,midy;
   initgraph(&gdriver,&gmode,"C:\\TC\\bgi");
   midx=getmaxx()/2;/*at center from x axis*/
   midy=getmaxy()/2;/*at center from y axis*/
   setcolor(RED);
   arc(midx,midy,0,90,100); /*0 to 90  angle 100 length */
   getch();
   closegraph();
   return 0;
}
