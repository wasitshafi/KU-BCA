#include<stdio.h>
#include<conio.h>
#include<iostream.h>
void main()
{
enum days_of_week {sun,mon,tue,wed,thur,fri,sat};
  days_of_week day1,day2;
  clrscr();
  day1=sun;
  day2=sat;
  int diff;
  diff=day2-day1;
  cout<<"differene between day1 and day2is :\t"<<diff;
  getch();
 }