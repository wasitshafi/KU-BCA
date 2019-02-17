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
   setcolor(GREEN);
   ellipse(midx,midy,0,360,60,150);/*0to 360 angle(full ellipse),60 length
				     from x axis & 150 length from y axis*/
   getch();
   closegraph();
   return 0;
}
