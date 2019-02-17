#include<stdio.h>
#include<conio.h>
#include<iostream.h>
class std
{
 int m1,m2;
 public:
 std(){
      }
 std(int x,int y)
 {

  m1=x;
  m2=y;
 }
 ~std(){};//destructor
 std sum(std temp1)
 {
  std temp2;
  temp2.m1=m1+temp1.m1;
  temp2.m2=m2+temp1.m2;
  return(temp2);
 }
 void display()
 {
   cout<<"\n\nmarks1=\t"<<m1;
   cout<<"\nmarks2=\t"<<m2;
   getch();
   return;
 }
};
void main()
{
 clrscr();
 int m1,m2,m3,m4;
 cout<<"enter marks of student:\t";
 cin>>m1;
 cout<<"\nenter marks of student:\t";
 cin>>m2;
 std obj1(m1,m2);
 clrscr();
 cout<<"enter marks of student:\t";
 cin>>m3;
 cout<<"\nenter marks of student:\t";
 cin>>m4;
 std obj2(m3,m4);
 std obj3;
 obj3=obj1.sum(obj2);
 obj1.display();
 obj2.display();
 obj3.display();
 }