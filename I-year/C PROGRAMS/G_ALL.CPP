#include<stdio.h>
#include<conio.h>
#include<graphics.h>
#include<stdlib.h>
void main()
 {
  int gdriver=DETECT,gmode;
  initgraph(&gdriver,&gmode,"C:\\TC\\bgi");
  setcolor(RED);
  line(100,100,200,100);
  setcolor(YELLOW);
  circle(100,200,50);
  setcolor(GREEN);
  rectangle(200,220,350,300);
  setcolor(WHITE);
  arc(80,80,0,90,50);
  setcolor(BLUE);
  ellipse(500,200,0,360,50,200);
  setcolor(YELLOW);
  line(200,200,400,200);
  line(400,200,300,100);
  line(300,100,200,200);
  setcolor(GREEN);
  rectangle(350,350,450,450);/*prining square*/
  getch();
  closegraph();

 }