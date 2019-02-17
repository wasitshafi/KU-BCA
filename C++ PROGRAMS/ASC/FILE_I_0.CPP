#include<iostream.h>
#include<fstream.h>
#include<conio.h>

void main()
{
  char name[20];
  int cost;
  clrscr();
  ofstream outf("item.txt");
  cout<<"\n\nenter data for ""item.txt""file:\n\n";
  cout<<"\nenter item name:\t";
  cin>>name;
  outf<<name<<"\n";

  clrscr();
  cout<<"\nenter item price:\t";
  cin>>cost;
  outf<<cost<<"\n";
  outf.close();

  /*****************************************************************/

  clrscr();
  cout<<"\nreading data from file ""item.txt"" :";
  ifstream inf("item");
  inf>>name;
  inf>>cost;
  cout<<"\n\nitem name:\t"<<name;
  cout<<"\nitem cost:\t"<<cost;
  inf.close();
  getch();
 }
