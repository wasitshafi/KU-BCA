#include<iostream.h>
#include<conio.h>
void main()
{
 char c1,c2;
 clrscr();
 cout<<"\nenter a character:-\t";
 cin.get(c1);  // by  cin.get(char *) version / by  char version
  // or we can also use:-
  //                      c=cin.get(); by void version
 clrscr();
 cout<<"\ngiven character is:-\t"<<c1;
 getch();
 }