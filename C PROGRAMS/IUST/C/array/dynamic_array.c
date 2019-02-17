#include<stdio.h>
#include<stdlib.h>

int sum(int *arr,int n)
{
 int sum = 0;
 for(int i = 0;i < n;i++)
 {
  sum += arr[i];
 }
 
 return sum;
}

int main()
{
 int n,*arr;
 system("clear"); 
 printf("\nEnter no. of elements you want :\t");
 scanf("%d", &n);
 
 arr = (int *)malloc(n*sizeof(int));
 
 if(arr == NULL)
 {
  printf("\noOps..! Not suffient memory.");
  exit(-1);
 }
 
 system("clear");
 printf("\nEnter %d values:\n\n", n);
 for(int i = 0;i < n;i++)
 {
  printf("\n%d > ", i+1);
  scanf("%d", &arr[i]);
 }
 
 printf("\nSum of elements is:\t%d\n", sum(arr,n));
 

}
