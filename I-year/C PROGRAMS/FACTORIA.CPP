#include<stdio.h>

int main()
	{
	       unsigned	long no,i,prdct=1;
		
		printf("\n\nenter the value\n");
		scanf("%ld",&no);
		for(i=1;i<=no;++i)
			{
				prdct=prdct*i;
			}
		printf("\n\n the factorial of %ld is %ld",no,prdct);
return 0;		
	}
