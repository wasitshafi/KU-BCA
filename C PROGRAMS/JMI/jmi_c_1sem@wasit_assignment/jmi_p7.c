//
//jmi_p10.c on 11-08-18
//
//program to determine the winner of sales contest
#include<stdio.h>
#include<conio.h>

int main()
{
	int n, sales[50], max = -1, index = -1, flag = 0;
	char emp[30][15], i;
	
	printf("\nEnter no. of employee:\t");
	scanf("%d", &n);
	
	if(n < 1 )
	{
		printf("\nInvalid input....");
		getch();
		return -1;
	}
	else
	{
		for(i = 0; i < n; i++)
		{
			fflush(stdin);	
			
			printf("\nEnter name of employee %d:\t", i + 1);	     
		    scanf("%[^\n]", emp[i]);
	
			printf("\nEnter units sold:\t");
			scanf("%d", &sales[i]);
	        
			if (sales[i] == max) flag = 1;
			
			if(max < sales[i])
			{
			  max = sales[i];
			  index = i; 
		      flag = 0;
			} 
		}

        if(flag)
        {
         for(i = 0; i < n;i++)
         { 
          if(sales[i] == max)
           printf("\n\n%s is winner(%d units sold).", emp[i], max);		
		 }        	
       }
	else
	     printf("\n\n%s is winner(%d units sold).",emp[index], max);		
	}
	return 0;
}
