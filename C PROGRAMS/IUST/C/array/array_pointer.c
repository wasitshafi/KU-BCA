#include<stdio.h>
#include<stdlib.h>

int main()
{
 int *p;
 int (*ptr)[5];
 int arr[5];

 p = &arr;
 ptr =&arr;


 printf("P = %u \t ptr = %u \n ", p , ptr);
p++;
ptr++;
printf("P = %u \t ptr = %u \n ", p , ptr);

return 0;
}
