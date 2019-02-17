#include<stdio.h>
#include<conio.h>
void main()
{
int i;
clrscr();
for(i=1;i<=10;i++)
printf("line no %d\n",i);
gotoxy(1,3);/*goto 3rd row and 2nd colunn*/
delline();/* it deletes the entire 3rd row*/

gotoxy(4,6);/*goto 6 row and 4st column*/
insline();   /*it inserts a blankspaces in the 6th row
		note:this function does not overwrite previous statement by
		blankspaces as it is clear in this program*/
printf("oops!");
getch();
}