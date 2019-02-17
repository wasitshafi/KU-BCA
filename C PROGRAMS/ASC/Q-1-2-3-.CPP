#include<stdio.h>
#include<conio.h>
void main()
	{
	int x,y;
	clrscr();
	printf("\n\nenter the values of x & y\n\n");
	scanf("%d%d",&x,&y);
	if(x>0&&y<0)
	printf("\npoint (%d,%d) lies in the 1st quadrant",x,y);
	if(x<0&&y<0)
	printf("\npoint (%d,%d) lies in the 2nd quadrant",x,y);
	if(x<0&&y>0)
	printf("\npoint (%d,%d) lies in the 3rd quardant",x,y);
	if(x>0&&y>0)
	printf("\npoint (%d,%d) lies in the 4th quadrant",x,y);
	if(x==0&&y==0)
	printf("\npoint (%d,%d) lies at the origin",x,y);


	if(x==0&&y<0||x<0&&y==0||x>0&&y==0||x==0&&y>0)/* here, if is condition for wrong input. while as  else is without condition for a wrong input .both methods are correct but only one can be used */


       // else

	printf("oops! you have entered wrong input");
	getch();
	}
