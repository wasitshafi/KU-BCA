#include <stdio.h>

#define MAX_SIZE 10

void get_dimensions(int *x, int *y)
{

  puts("Enter rows ?\t");
  scanf("%d", x);
  
  puts("Enter cols ?\t");
  scanf("%d", y);
}

void get_matrix(char ch, int a[][MAX_SIZE], int r, int c) // ch stores name of array
{  

  for(int i = 0;i < r;i++)
    {
      for (int j = 0;j < c;j++)
	{
	  printf("%c [%d] [%d] = ", ch , i + 1, j + 1);
	  scanf("%d", &a[i][j]);
	}
     printf("\n");	
    }
 printf("\n\n");
}

void add_matrix(int r[MAX_SIZE][MAX_SIZE], int a[MAX_SIZE][MAX_SIZE], int b[MAX_SIZE][MAX_SIZE], int rows, int cols)
{

 for(int i = 0;i < rows;i++)
    {
      for (int j = 0;j < cols;j++)
	{
	  r[i][j] = a[i][j] + b[i][j];
	}
    }
 
}

void print_matrix(int a[][MAX_SIZE], int r, int c)
{
  
  printf("\n");
  for(int i = 0;i < r;i++)
    {
      for (int j = 0;j < c;j++)
	{

	   printf("%d\t", a[i][j]);
	  
	}
      printf("\n");
    }
printf("\n\n");
}

int main()
{
 
  int A[MAX_SIZE][MAX_SIZE];
  int B[MAX_SIZE][MAX_SIZE];
  int R[MAX_SIZE][MAX_SIZE];

  int rows;
  int cols;

  get_dimensions(&rows, &cols);
 
  printf("\nEnter elements of matrix A :\n");
  get_matrix('A', A, rows, cols);
  printf("\nEnter elements of matrix B :\n");
  get_matrix('B', B, rows, cols);

  add_matrix(R, A, B, rows, cols);
    
  printf("\nMatrix A is :\n");
  print_matrix(A, rows, cols);

  printf("\nMatrix B is :\n");
  print_matrix(B, rows, cols);
  
  printf("\nSum of matrix A & B is :\n\n");
  print_matrix(R, rows, cols);

  return 0;
}
