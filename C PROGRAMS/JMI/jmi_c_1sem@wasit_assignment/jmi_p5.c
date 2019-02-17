//
//jmi_p5.c on 09-08-18
//
//progrm to ....

#include<stdio.h>

struct salesman{
  char name[30];
  int gross_sales, net_income;
};
                  
int main()
{ 
 //struct s_person sp[3];
 int i, n;
 
 printf("\t\t\t\tEnter data for 3 sales persons:");
 printf("\nEnter no of salesman : \t");
 scanf("%d", &n);
 
 struct salesman sm[n];
 
 for( i = 0 ; i < n ; i++ )
 {
  fflush(stdin);  // clears buffer *For more info read https://
 
  printf("\n\n\nEnter name of emp. %d :\t", i + 1);
  scanf("%[^\n]", sm[i].name);
  
  printf("\nEnter gross sale of %s :\t", sm[i].name);
  scanf("%d", &sm[i].gross_sales);
 
  sm[i].net_income = 1000 + ( sm[i].gross_sales * 10 /100);
 } 

 printf("\n\n\nData of sales persons are as :\n");

 printf("Name \t\t Total Income \n");

for(i = 0; i < n;i++)
 {
  printf("%s \t\t %d\n",  sm[i].name, sm[i].net_income);
 } 
return 0;
 
} 
