#include <graphics.h>
#include <stdio.h>
#include <conio.h>
void main()
{
   int gdriver=DETECT,gmode;
   int midx,midy;
   initgraph(&gdriver,&gmode,"C:\\TC\\bgi");
   midx=getmaxx()/2;
   midy=getmaxy()/2;
   putpixel(midx,midy,WHITE); /*printing a single dot on the console screen
				at the center */
   getch();
   closegraph();
}
