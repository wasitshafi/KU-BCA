#include <graphics.h>
#include <stdio.h>
#include <conio.h>
void main()

{
   int gdriver=DETECT,gmode;
   int midx,midy;
   initgraph(&gdriver,&gmode,"C:\\TC\\bgi");
   setcolor(YELLOW);
   rectangle(100,100,200,200);
   getch();
   closegraph();
//   return 0;
}
