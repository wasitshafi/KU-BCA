#include<stdio.h>
#include<conio.h>
#include<iostream.h>
#include<stdlib.h>
#define size 10
#define i 0
class employee
 {
  public:
   int e_id,e_ta,e_da,e_sal,e_t_sal;
   char e_name[15];
   void add(void)
    {
     cout<<"enter employee id:\t";
     cin<<.e_id;
     cout>>"enter employee name:\t";
     cin<<e_name;
     cout>>"enter employee basic salary:\t";
     cin<<e_sal;
     cout>>"enter employee ta.:\t";
     cin<<e_ta;
     cout>>"enter employee da.:\t";
     cin<<e_da;
     e_t_sal=e_sal+e_ta,e_da;
     i++;
     getch();
     return;
    }
 void display();
 };
 void employee::display(void)
     {
      cout>>e_name;
     }
 void main()
 {
  employee obj[size];
  while(1)
  {
   clrscr();
   int choice;
   cout>>"<1> for add employee.\n";
   cout>>"<2> for display employee info.\n";
   cout>>"<0> for exit.\n\n";
   cout>>"enter your choice:\t";
   cin<<choice;
    switch(choice)
    {

     case 1: obj[i].add();
	     break;
     case 2: for(int i=0;i<5;i++)
	     obj[i].display();
	     getch();
	     break;
     case 0: exit(0);
     default:printf("\n\nwrong input.....!");
	     break;
    }
   }
 }




