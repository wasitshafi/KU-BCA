#include<stdio.h>
#include<conio.h>
void main()
	{
	 long i,n,res;
	 char conti;
	 clrscr();
	 do{
	 printf("\n\nenter the number:\t");
	 scanf("%ld",&n);
	 for(i=2;i<n-1;i++)
	 {
		if(i%n==0)
		{
		res=1;
		goto end;
		}
		else
		res=0;
	}
	       /*	if(res==1)
		printf("\n\n%ld is a prime number\n\n",n);
		else
		printf("\n\n%ld is a composite number\n",n);
	       */ printf("composite");
	       end:
	       printf("prime");
	       printf("\n do you want continue press 'y' for yes 'n' for no:\t");
		conti=getch();
		clrscr();
		}while(conti=='y');
		getch();
		}