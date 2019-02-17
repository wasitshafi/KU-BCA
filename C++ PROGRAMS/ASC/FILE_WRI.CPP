#include<iostream.h>
#include<conio.h>
#include<fstream.h>

void main()
{
ofstream myfile;
clrscr();
myfile.open("newfile.txt");
myfile<<"this is my first file program in c++";
myfile.close();
getch();
}