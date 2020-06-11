#include<stdio.h>
#include<conio.h>
void main()
{
 char city[20];
 long pin;
 clrscr();
 FILE *fptr;
 fptr=fopen("innfo.dat","r+");
/* printf("\nenter your city name :\t");
 scanf("%s",city);
 printf("\nenter the pin of your city:\t");
 scanf("%ld",&pin);
 fprintf(fptr,"%s%ld",city,pin); */


fscanf(fptr,"%s%ld",city,pin);
 printf("\ncity name:\t%s\ncity zip code:\t%ld",city,pin);
 //printf("\ncity zip code:\t%ld",pin);


 fclose(fptr);
 getch();
 }