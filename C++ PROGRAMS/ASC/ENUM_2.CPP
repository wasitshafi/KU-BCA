#include<stdio.h>
#include<conio.h>
#include<iostream.h>
#include<string.h>
#error wrong condition for this progrma.... i leave it....
void main()
{
enum days_of_week {sun,mon,tue,wed,thur,fri,sat};
  days_of_week d1,d2;
  clrscr();
  int diff;
  char day1[4],day2[4];
  cout<<"enter day 1 :\t";
  cin>>day1;
  clrscr();
  cout<<"enter day 2 :\t";
  cin>>day2;
  if(strcmp(sun,day1==0)
   d1=sun;
  else if(day1=='mon')
   d1=mon;
  else if(day1=='tue')
   d1=tue;
  else if(day1=='wed')
   d1=wed;
  else if(day1=='thur')
   d1=thur;
  else if(day1=='fri')
   d1=fri;
  else if(day1=='sat')
   d1=sat;

   if(day2=='sun')
   d2=sun;
  else if(day2=='mon')
   d2=mon;
  else if(day2=='tue')
   d2=tue;
  else if(day2=='wed')
   d2=wed;
  else if(day2=='thur')
   d2=thur;
  else if(day2=='fri')
   d2=fri;
  else if(day2=='sat')
   d2=sat;



  diff=d2-d1;
  cout<<"differene between "<<day1 <<" and "<< day2 <<" is:-\t" <<diff;
  getch();
 }