#include<stdio.h>
#include<conio.h>
int main(int args,char *argv[])
{
int i=0;
for(i=0;i<args;i++);
printf("%s",argv[i]);
return 0;
}