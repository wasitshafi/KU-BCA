//
//
//
//

#include<stdio.h>
#include<graphics.h>

int main()
{
 int gd = DETECT, gm;
 int x, y, i, j;

 char c[1];
 char ch;

 initgraph( &gd, &gm, "C://TC//BGI" );

 printf("\nEnter char:\t");
 ch = getch();

 sprintf(c,"%c",ch);

 for( i = getmaxx() /  2, j = getmaxy() / 2 ; ; i++, j++ )
 {
  x = i % getmaxx();
  y = j % getmaxy();

  outtextxy( x, getmaxy() / 2, c );
  outtextxy( getmaxx() / 2, y, c );

  delay(10);
  cleardevice();

  if( i == getmaxx() ) i = 0;
  if( j == getmaxy() ) j = 0;
 }
 return 0;
}
