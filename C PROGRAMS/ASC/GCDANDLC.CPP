#include<stdio.h>
#include<conio.h>
void main()
	{
	int n1,num1,num2,n2,rem=0;
	clrscr();
	printf("\nenter the two non-zero  numbers .to find the gcd and hcf.\n");
	scanf("\n%d%d",&num1,&num2);
	n1=num1;
	n2=num2;
	rem=num1%num2;
	while(rem!=0)
		{
		num1=num2;
		num2=rem;
		rem=num1%num2;
		}
	printf("\nthe gcd of %d and %d is %d",n1,n2,num2);
	printf("\nthe lcm of %d and %d is %d",n1,n2,(n1*n2)/num2);
	getch();
	}