#include<stdio.h>
#include<conio.h>
#include<graphics.h>
void main()
 {
 int gd=DETECT,gm;
 initgraph(&gd,&gm, "C:\\TC\\bgi");
 setcolor(GREEN);
 line(200,200,600,200);
 line(600,200,400,100);   /*for printing triangle*/
 line(400,100,200,200);
 rectangle(210,200,590,400);   /*for printing boundries*/
 rectangle(380,320,440,400);   /*for printing door */
 ellipse(390,360,0,360,2,6);    /* for prining ellipse in door*/
 getch();
 closegraph();
 }
