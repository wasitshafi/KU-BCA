#include<stdio.h>
#include<conio.h>
#include<float.h>
#include<limits.h>
void main()
 {
  int a=1;
  long int b=2;
  signed int c=3;
  short int d=4;
  unsigned long e=5;
 clrscr();
  printf("\n\nsize of'int' is :\t%d bytes",sizeof(a));
  printf("\nint_min=%d",INT_MIN);
  printf("\tint_max=%d",INT_MAX);
  printf("\n\nsize of 'long int' is:\t%u bytes",sizeof(b));
  printf("\nl_int min=%ld",LONG_MIN);
  printf("\tl_int_max=%ld",LONG_MAX);
  printf("\n\nsize of 'signed int' is:%u bytes",sizeof(c));
  printf("\ns_int_max=%u",UINT_MAX);
  printf("\n\nsize of 'short int'is:\t%u bytes",sizeof(d));
  printf("\nsrtr_min=%d\t",SHRT_MIN);
  printf("shrt_max=%d",SHRT_MAX);
  printf("\n\nsize of 'char'is:\t%d bytes",sizeof(char));
  printf("\n\nsize of 'double' is:\t%d bytes",sizeof(double));

  printf("\n\nsize of 'long double'is:%d bytes",sizeof(long double));
  printf("\n\nsize of 'float'is:\t%d bytes",sizeof(float));
  printf("\nschar_min=%d\n",SCHAR_MIN);
  printf("schar_max=%d\n",SCHAR_MAX);
  printf("uchar_max=%d\n",UCHAR_MAX);
  getch();
  }

