#include<stdio.h>
#include<conio.h>
#include<iostream.h>
inline int area(int s)
{
return (s*s);
}
void main()
{
 int sides;
 clrscr();
 cout<<"enter the side of square:\t";
 cin>>sides;
 cout<<"\narea of square is :\t"<<area(sides);
 getch();
}