#include"stdio.h"
#include"conio.h"
void main()
{
	int num,i;
	clrscr();
	printf("prime no. b\w 1 to 20 are as \n");
	for(num=2;num<=20;num++)
      {
	 for(i=2;i<num-1;i++)
	{
	 if(num%i==0)
	 {
	 printf("%d\t",num);
	 continue;
	 }
	}
      }
	getch();
	}

