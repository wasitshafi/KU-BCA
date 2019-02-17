#include<stdio.h>
#include<conio.h>
void main()
     {
	char alpa;
	printf("enter alphabet\t");
	alpa=getchar();
	if(alpa=='a'|| alpa=='e'|| alpa=='i'|| alpa=='o'|| alpa=='u')
	printf("alphabet is a vowel");
	else
	printf("alphabet is not a vowel");
	getch();
	clrscr();
      }