#include<stdio.h>
#include<limits.h>
#include<float.h>

void echo_int(void);
void echo_long_int(void);
void echo_short_int(void);
void echo_unsigned_int(void);

void echo_float(void);
void echo_double_float(void);
void echo_char(void);

int main(void)
{

  echo_int(); 
  echo_long_int();
  echo_short_int();
  echo_unsigned_int();
  echo_float();
  echo_double_float();
  /*echo_string();
  */
  return 0;
}

void echo_int(void)
{
  int num;
  
  printf("Enter an integer ( %d - %d ) : \t", INT_MIN, 	INT_MAX);
  scanf("%d",&num);
  
  printf("\nYou have entered : \t %d.\n",num); 
}


void echo_long_int(void)
{
  long int num;
  
  printf("Enter an integer ( %ld - %ld ) : \t", LONG_MIN, LONG_MAX);
  scanf("%ld",&num);
  
  printf("\nYou have entered : \t %ld.\n",num); 
}

void echo_short_int(void)
{
  int num;
  
  printf("Enter an integer ( %d - %d ) : \t", SHRT_MIN, SHRT_MAX);
  scanf("%d",&num);
  
  printf("\nYou have entered : \t %d.\n",num); 
}

void echo_unsigned_int(void)
{
  int num;
  
  printf("Enter an unsigned integer ( 0 - %u ) : \t", UINT_MAX);
  scanf("%u",&num);
  
  printf("\nYou have entered : \t %u.\n",num); 
}

void echo_float(void)
{
  float num;
  
  printf("Enter an floating point no. ( %f - %f ) : \t",FLT_MIN, FLT_MAX);
  scanf("%f",&num);
  
  printf("\nYou have entered : \t %f.\n",num); 
}

void echo_double_float(void)
{
  float num;
  
  printf("Enter an floating point no. ( %f - %f ) : \t",FLT_MIN, FLT_MAX);
  scanf("%f",&num);
  
  printf("\nYou have entered : \t %f.\n",num); 
}


