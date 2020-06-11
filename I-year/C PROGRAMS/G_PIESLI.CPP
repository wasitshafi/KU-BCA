#include <graphics.h>
#include <stdlib.h>
#include <stdio.h>
#include <conio.h>
int main(void)
{
   int gdriver=DETECT,gmode;
   int midx,midy;
   initgraph(&gdriver,&gmode,"C:\\TC\\bgi");
   midx=getmaxx()/2;/*at center from x axis*/
   midy=getmaxy()/2;/*at center from y axis*/
  // setcolor(RED);
//   setfillstyle(5,5);
   pieslice(midx,midy,0,180,100); /*0 to 180 angle 100 length */
   getch();
   closegraph();
   return 0;
}
