#include<stdio.h>
#include<stdlib.h>

#define Max_Size 10

void Get_Matrix(int a[Max_Size][Max_Size], int x, int y)
{
   printf("Enter the matrix elements : \n");
   for(int i = 0;i < x;i++)
   {
     for(int j = 0;j < y;j++)
     {
      printf("a[%d][%d] = ", i + 1, j + 1);		
      scanf("%d", &a[i][j]);				
     }
     printf("\n");
   }
}

void Put_Matrix(int a[Max_Size][Max_Size], int x, int y)
{
   printf("Matrix elements are as follows : \n\n");
   for(int i = 0;i < x;i++)
   {
     for(int j = 0;j < y;j++)			
      printf("%d \t", a[i][j]);	
     
     printf("\n");
   }
}

void Put_Matrix_Address(int a[Max_Size][Max_Size], int x, int y)
{
   printf("Matrix address are as follows : \n\n");
   for(int i = 0;i < x;i++)
   {
     for(int j = 0;j < y;j++)			
      printf("%p\t", &a[i][j]);	
     
     printf("\n");
   }
}	

void main()
{
  char choice;	
  do{
     int a[Max_Size][Max_Size];
     int rows, cols;
     
    // int *p;
     //p=1392069424;
     //printf("%d", *p);
     
     system("clear");
     printf("Enter the number of row ? \t");
     scanf("%d", &rows);    	
     printf("Enter the number of columns ?  \t");
     scanf("%d", &cols);
     system("clear");

     Get_Matrix(a, rows, cols);   
     Put_Matrix(a, rows, cols);
     Put_Matrix_Address(a, rows, cols);
		
     printf("\nDo you want to exit the program (y/n) ? \t");
     scanf("%s", &choice);
	
    }while(choice == 'n');

}
