//
//jmi_15 on 13-08-18
//
//programe to compute exp(x)
#include<stdio.h>
#include<conio.h>

int fact(int num)
{
	int i ,fact = 1;
	
	for(i = num; i != 0; i--)
	{
	 fact = fact * i;
	}
	
	return fact;	
}

int xpowery(int x, int y)
{
	int i, sum = 1 ;
	
	for(i = 0 ; i < y; i++)
	{
		sum = sum * x;
	}
	return sum;
}

/* float __exp(int base, int y)
{
	int power = 0;
	int fct = 1;
	 
	float sum = 0, temp = 0;
	
	while(power <= y)
	{
		
		printf("%f\n",  (float)xpowery(base, power) / fact(power));
		sum +=  (float)xpowery(base, power) / fact(power);
        power++;
        
	}
	
	return sum;
}
*/








 float __exp(int base, int y)
{
	int power = 0;
	int fct = 1;
	 
	float sum = 0, temp = 0;
	
	while(power <= y)
	{
		
//		 printf("%f\n",  (float)xpowery(base, power) / fact(power));

		sum +=  (float)xpowery(base, power) / fct;       
	    power++;
        fct = fct * power;

	}
	
	return sum;
}




int main()
{
	int x, y;
    float res;
		
	printf("\nEnter value of x:\t");//base
	scanf("%d", &x);
	
	printf("\nEnter value of y:\t");//precision
	scanf("%d", &y);
	
	
	if(x <= 0)
	{
		printf("\nInvalid input.....!");
		getch();
		return -1;
	}
	
	printf("\n\nResult = %f.", __exp(x, y));
	
  //printf("%d",xpowery(5,1));
  //getch();
		
    return 0;
}
