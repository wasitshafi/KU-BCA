#include<stdio.h>
#include<conio.h>
main(int argc, char *argv[])
{
 int i;
 printf("no of arguments are :\t%d",argc);
 for(i=1;i<argc;i++)
 printf("argumentd %d=%s",i,argv[i]);
 }
