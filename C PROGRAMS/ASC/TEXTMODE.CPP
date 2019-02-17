#include<stdio.h>
#include<conio.h>
void main()
 {
 int i;
 clrscr();
      textmode(0);/*here 0 represents 40 columns*/

				  /*in textmode
			    0 represent 40 columns balck and white
			    1 represent 40 columns color
			    2 represent 80 columns black and white
			    3 represent 80 columns color*/
     printf("program for understanding the use 'textmode()'function\n");
     for(i=1;i<=80;i++)
     printf("*_+_");/*if we count '*,+,and underscore'its=40 or 20 columns
							 in each line*/
     getch();
 }