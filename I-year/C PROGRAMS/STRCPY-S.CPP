#include<stdio.h>
#include<conio.h>
#include<string.h>
#include<ctype.h>
void main()
{
 char remark[20];
 char grade;
 clrscr();
 printf("\n\nenter any grade from the following");
 printf("\n\nS stands for super");
 printf("\nA stands for very good");
 printf("\nB stands for fair");
 printf("\nC stands for absent");
 printf("\nF stands for fail\n\n\n\t");
 scanf("%c",&grade);
 grade=toupper(grade);
  switch(grade)
  {
  case 'S': strcpy(remark,"super");
		break;
  case 'A': strcpy(remark,"very good");
		break;
  case 'B': strcpy(remark,"fair");
		break;
  case 'c': strcpy(remark,"absent");
		break;
  case 'F': strcpy(remark,"fail");
		break;
  default:strcpy(remark," oops! error in grade");
		break;
  }
  printf("\n\nresult is : %s",remark);
  getch();
}