#include<stdio.h>
#include<conio.h>
#include<iostream.h>
class one{
	     int x;
	     public:
	      void getdata_x()
	      {
	       clrscr();
	       cout<<"enter value of x : ";
	       cin>>x;
	       clrscr();
	       return;
	      }
	      int getx(){  return(x); }
	      void putdata_x()
		{
		 cout<<"value of x is :\t"<<x;
		 return;
		}

	     };
class two:public one{
	     int y;
	     public:
	     void getdata_y()
	     {
	      cout<<"\nenter value of y:\t";
	      cin>>y;
	      clrscr();
	      return;
	     }
	     int gety(){ return(y); }
	     void putdata_y()
	     {
	     cout<<"\nvalue of y is : "<<y;
	     }
		    };
class three:private two{
	     int s;
	     public:
	     void getfun()
	     {
	      getdata_x();
	      getdata_y();
	     }
	     void putfun()
	     {
	      putdata_x();
	      putdata_y();
	     }
	     void sum()
	     {
	      s=getx()+gety();
	      cout<<"\nsum is : "<<s;
	      return;
	     }
			};
void main()
{
 three obj;
 obj.getfun();
 clrscr();
 obj.putfun();
 obj.sum();
 getch();
}
