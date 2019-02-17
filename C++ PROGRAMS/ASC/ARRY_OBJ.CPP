#include<stdio.h>
#include<conio.h>
#include<stdlib.h>
#include<iostream.h>
class employee
 {
  int id,sal,ta,da,total;
  char name[10];
  public:
  void getinfo()
  {
   cout<<"enter employee id no:\t";
   cin>>id;
   cout<<"enter employee name:\t";
   cin>>name;
   cout<<"enter empolyee basic salary:\t";
   cin>>sal;
   cout<<"enter employee ta:\t";
   cin>>ta;
   cout<<"enter employee da.\t";
   cin>>da;
   cout<<"\nemployee data added.";
   getch();
   clrscr();
   return;
  }
  void displayinfo()
  {
   total=sal+ta+da;
   cout<<id<<"\t  ";
   cout<<name<<"\t";
   cout<<total<<"\n";
   return;
  }
  int search(int key)
  {
    if(id==key)
     {
      cout<<"search successfull.\n";
      cout<<"\n\nemployee id\tname\ttotal salary\n";
      cout<<id;
      cout<<"\t\t"<<name;
      cout<<"\t"<<total;
      getch();
      return 1;
     }
     else
      return 0;
  }
 };

void main()
{
 clrscr();
 employee obj[10];
 int i=0;
 while(1)
 {
 clrscr();
 int choice;
 cout<<"<1> for add employee info.\n";
 cout<<"<2> for display employee info.\n";
 cout<<"<3> for search employ by id.\n";
 cout<<"<0> for exit.\n\n";
 cout<<"enter your chioce:\t";
 cin>>choice;
  switch(choice)
  {
   case 1:
	   if(i>10)
	   {
	    cout<<"\nlist is full.";
	    getch();
	   }
	   else
	   {
	       obj[i].getinfo();
	       i++;
	   }
	  break;
   case 2:
	   if(i==0)
	   {
	    cout<<"no data is added yet.";
	    getch();
	    break;
	   }
	   else
	   {
	    cout<<"\n\nid no\t  name\ttotal salary\n";
	    for(int j=0;j<i;j++)
	    obj[j].displayinfo();
	    getch();
	    break;
	   }
   case 3: int flag,key;
	   if(i==0)
	   {
	     cout<<"no data is added yet.";
	     getch();
	     break;
	   }
	   else
	   {
	     cout<<"\n\nenter employee id no.";
	     cin>>key;
	     for(int j=0;j<i;j++)
	     {
	      flag=obj[j].search(key);
	       if(flag==1)
		{
		 break;
		}
	       if(j==i)
		{
		 cout<<"search unsuccessful.";
		 getch();
		 break;
		}


	     }
	   }
   case 0: exit(0);
  }
 }
}