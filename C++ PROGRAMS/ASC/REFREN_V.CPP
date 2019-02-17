#include<stdio.h>
#include<conio.h>
#include<iostream.h>
void main()
{
   clrscr();
   int sum=10;
   int &total=sum;//reference variable

   cout<<"value of sum is :"<<sum;
   cout<<"\tvalue of total is:"<<total;
   sum=sum+10;
    cout<<"\nvalue of sum is :"<<sum;
   cout<<"\tvalue of total is:"<<total;
    total=total+10;
    cout<<"\nvalue of sum is :"<<sum;
   cout<<"\tvalue of total is:"<<total;
   getch();
   }
