//
//jmi_p22.c on 25-08-18
//
//programe to compute nth term of fibonacii by using recursion
#include<stdio.h> 

void fib(int n, int t1, int t2, int t)
{
	if(!n)
	{
	    printf("%d\t", t);
	    return n;	
	}
	else
	{
		t = t1 + t2;
		t1 = t2;
		t2 = t;
		fib(--n, t1, t2, t);
 	}
}
int main()
{
   int t, t1 = 0, t2 = 1, n;
   
   printf("\nEnter the nth terms you want:\t");
   scanf("%d", &n);

   fib(n, 0, 1 , 1);
}

