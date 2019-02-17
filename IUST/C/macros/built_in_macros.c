//
//built_in_macros.c
//
//A programe for basic built_in_macros

#include <stdio.h>
#include <stdlib.h>
void fun1()
{

}
int main()
{


	printf("I am running %s in function %s  at line no %d on  %s  at %s  on complier version %ld.\n",__FILE__, __func__, __LINE__, __DATE__, __TIME__,__STDC_VERSION__);


}
