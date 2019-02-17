#include<iostream.h>
#include<stdio.h>
#include<conio.h>
#include<stdlib.h>
class figures
 {
  public:
  void area(float);
  void area(int,int);
  void area(int);
 };
 void figures::area(float r)
 {
  float pi=3.14,a;
  a=pi*r*r;
  cout<<"area of circle is:\t"<<a;
  getch();
  return;
 }
 void figures::area(int l,int b)
 {
  int a;
  a=l*b;
  cout<<"area of rectngle is:\t"<<a;
  getch();
  return;
 }
 void figures::area(int s)
 {
  int a;
  a=s*s;
  cout<<"area of square is :\t"<<a;
  getch();
  return;
 }
 void main()
 {
  while(1)
  {
   clrscr();
   figures obj;
   int choice,s,l,b;
   float r;

   cout<<"<1> for area of circle:\n";
   cout<<"<2> for area of rectangle:\n";
   cout<<"<3> for area of square:\n";
   cout<<"<0> for exit:\n\n";
   cout<<"enter your choice:\t";
   cin>>choice;
   switch(choice)
   {
   case 1: cout<<"enter radius of circle:\t";
	   cin>>r;
	   obj.area(r);
	   break;
   case 2: cout<<"enter length of rectangle:\t";
	   cin>>l;
	   cout<<"\nenter breadth of rectangle:\t";
	   cin>>b;
	   obj.area(l,b);
	   break;
   case 3: cout<<"enter side of square:\t";
	   cin>>s;
	   obj.area(s);
	   break;
   case 0: exit(0);
   default:cout<<"wrong input.....!";
	   getch();
	   break;
   }
  }
}