#include<stdio.h>
#include<conio.h>
#include<iostream.h>
class abc{
	  int x,y;
	  public:
	   void getdata()
	   {
	    this->x=10;
	    y=20;
	   }
	   void putdata()
	   {
	    cout<<"value of x :-\t"<<this->x;
	    cout<<"\nvalue of y :-\t"<<y;
	    getch();
	   }
	};
void main()
{
      abc obj1;
      clrscr();
      obj1.getdata();
      obj1.putdata();
}