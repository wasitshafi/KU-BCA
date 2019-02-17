#include <graphics.h>
#include <stdio.h>
#include <conio.h>
int main(void)
{
   int gdriver=DETECT,gmode;
   int midx,midy;
   int radius=100;
   initgraph(&gdriver,&gmode,"C:\\TC\\bgi");
   midx=getmaxx()/2;
   midy=getmaxy()/2;
   setcolor(RED);



  /* line(50,40,100,80);
   moveto(51,41);
   lineto(99,79);
   moveto(99,41);
   lineto(51,79);*/


   /*draw the circle */
  circle(midx,midy,radius);
  //bar(10,25,100,75);
  //bar3d(200,200,200,200,80,90);
   getch();
   closegraph();
   return 0;
}
