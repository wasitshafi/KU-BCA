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
   ellipse(midx,midy,0,360,200,80);/*0to 360 angle(full ellipse),200 length
				     from x axis & 80 length from y axis*/
   getch();
   closegraph();
   return 0;
}
