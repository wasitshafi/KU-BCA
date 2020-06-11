#include<stdio.h>
#include<conio.h>
#include<graphics.h>
void main()
 {
 int gd=DETECT,gm;
 initgraph(&gd,&gm, "C:\\TC\\bgi");
 line(150,100,100,200);
 line(100,200,200,200);
 line(200,200,150,100);
 getch();
 closegraph();
 }
