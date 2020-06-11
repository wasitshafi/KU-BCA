#include<stdio.h>
#include<conio.h>
#include<stdlib.h>
#include<graphics.h>
void main()
 {
  int gdriver=DETECT,gmode,midx,midy;
  initgraph(&gdriver,&gmode,"C:\\TC\\bgi");
  setcolor(YELLOW);
  midx=getmaxx()/2;
  midy=getmaxy()/2;
  circle(midx,midy,100);
  ellipse(midx-35,midy-35,0,360,6,15);
  ellipse(midx+35,midy-35,0,360,6,15);
  arc(midx,midy,200,340,50);
  getch();
  closegraph();
  }