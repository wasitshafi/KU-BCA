#include<stdio.h>
#include<conio.h>
#include<iostream.h>
class abc
{
 int x,y;
 public:
 abc(int a,int b)
 {
  x=a;
  y=b;
 }
 void display()
 {
  cout<<"value of x is :\t"<<x;
  cout<<"\nvalue of y is :\t"<<y;
  getch();
  return;
 }
};
void main()
{
 clrscr();
 abc obj1=abc(10,55);
 obj1.display();
}
