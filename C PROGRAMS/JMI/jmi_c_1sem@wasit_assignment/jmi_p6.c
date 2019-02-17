//
//jmi_p6.c on 12-08-18
//
//programe to ...
#include<stdio.h>
#include<conio.h>

struct employee{
   char name[20];
   int w_hr;
   int gross_pay;
};
                  
int main()
{ 

 struct  employee emp[10];
 int i, n, rate_phr;
 
 printf("\nEnter no of employee:\t");
 scanf("%d", &n);
 
 if(n <= 0)
 {
 	printf("\n\nInvalid input...!");
 	getch();
 	return -1;
 }
 
 
 printf("\nEnter rate/hr:\t");
 scanf("%d", &rate_phr);
 if( rate_phr <= 0)
 {
  printf("\n\nInvalid input...!");
  getch();
  return -1;
 }
 
 
 printf("\n\n");
 
 
 for (i = 0; i < n; i++)
 {
 	fflush(stdin);
	printf("\nEnter name of employee %d:\t", i + 1);
 	scanf("%[^\n]", emp[i].name);
 	
 	printf("Enter total working hours:\t");
 	scanf("%d", &emp[i].w_hr);
 	
 	if(emp[i].w_hr <= 0)
 	{
 	 printf("\n\nInvalid input...!");
 	 getch();
 	 return -1;
	}
	
 	if(emp[i].w_hr <= 40)
 	{
 		emp[i].	gross_pay = emp[i].w_hr * rate_phr; 
	}
	
	else
	{
		int excess = emp[i].w_hr - 40;
		 
		emp[i].	gross_pay = 40 * rate_phr + (excess * rate_phr) / 2;
	}
 	
  }
 
 printf("\n\nData of employee are as follows:\n\n");
 printf("\nS.no\tNames\tGross_pay\n\n");
 
 for(i = 0 ; i < 40 ; i++,printf("-"));
 
 for(i = 0; i < n;i++)
 {
  printf("\n%d)\t %s\t %d", i + 1, emp[i].name, emp[i].gross_pay);
 } 
 
return 0;
 
}
