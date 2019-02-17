#include"stdio.h"
#include"conio.h"
void main()
{
	struct{
	char name[13];
	char adress[13];
	int room_no;
	int bill;
	}stu[13];
	int n,i;
	clrscr();
	printf("enter the no of customers for which u want to creat data base\n\n");
	scanf("%d",&n);
	clrscr();
	for(i=1;i<=n;i++)
	{
	printf("\n\nenter the name and adress of the %d customer\n",i);
	scanf("%s%s",stu[i].name, stu[i].adress);
	clrscr();
	printf("enter the room no and bill");
	scanf("%d%d",&stu[i].room_no,&stu[i].bill);
	}
	for(i=0;i<n;i++)
	{
	printf("name of the customer             %s\n\nadress of the customer is        %s\n\n",stu[i].name,stu[i].adress);
	printf("room no                          %d\n\ntotal bill=                      %d",stu[i].room_no,stu[i].bill);
	}
	getch();
	}


