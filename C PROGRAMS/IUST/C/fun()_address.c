//
//main_fun.c
//
//program to print address of function

#include<stdio.h>
#include<stdlib.h>

int count = 5;

int main()
{
  auto int x;
  static int y;
  fun();
  printf("Address of main() is :\t %p \n",main);
  printf("Address of fun() is :\t %p \n",fun);
  printf("Address of x(auto)is :\t %p \n",&x);
  printf("Address of y(static)is :\t %p  \n\n\n",&y);
 
  if(count--)
    main();
  
  return 0;
}

void fun(){}; 


