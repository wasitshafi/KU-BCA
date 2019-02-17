#include<stdio.h>
#include<conio.h>
#include<iostream.h>
void swap(int,int);
void swap(float,float);
void main()
{
 clrscr();
 int a,b;
 float i,j;
 cout<<"enter any two integers:\n";
 cin>>a>>b;
 swap(a,b);
 clrscr();
 cout<<"\n\nenter any two floating no:\n";
 cin>>i>>j;
 swap(i,j);
getch();
}
void swap(int x,int y)
{
 x=x+y;
 y=x-y;
 x=x-y;
 cout<<"after swapping values are:\t";
 cout<<x<<"\t";
 cout<<y;
 getch();
 return;
}
void swap(float x,float y)
{
 x=x+y;
 y=x-y;
 x=x-y;
 cout<<"after swapping values are:\t";
 cout<<x<<"\t";
 cout<<y;
 return;
}