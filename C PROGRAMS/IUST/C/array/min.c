#include <stdio.h>
#include <limits.h>

#define MAX_SIZE 100

int min(int arr[], int n)
{
 int min = INT_MAX;
 
 for (int i = 0;i <  n;i++)
  if (arr[i] < min) min = arr[i]; 
 
 return min;

}

int main(void){
  int n;
  int arr[MAX_SIZE];
  
  puts("\nEnter no. of elements ?");
  scanf("%d", &n);
  
  printf("Enter %d elements:\n\n", n);
  for(int i = 0; i < n; i++)
  {
    printf("%d > ", i+1);
    scanf("%d", &arr[i]);
  }

  printf("Minimum number is %d\n", min(arr, n));
  return 0;
}

