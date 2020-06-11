#include<stdio.h>
#include<conio.h>
void main()
 {
  int ary[50][50],sum,i,j,r,c,mm;
  clrscr();
  printf("enter no of students:\t");
  scanf("%d",&r);
  clrscr();
  printf("\nenter no of subjects:\t");
  scanf("%d",&c);
  struct std_info{
		   char std_name[15];
		   char sb_name[15];
		   int total;
		   float p_age;
		 }std[50];
  clrscr();
  printf("\nnow you have to enter %d student names:\n\n",r);
  for(i=0,j=1;i<r;i++,j++)
  {
  printf("\nenter name of student no. %d:\t",j);
  scanf("%s",&std[i].std_name);
  }
  clrscr();
  printf("\nyou have to enter %d subjet names:\n\n",c);
  for(i=0;i<c;i++)
  {
   printf("enter name of subject no %d\t:",i+1);
   scanf("%s",&std[i].sb_name);
  }
  clrscr();
   for(i=0;i<r;i++)
   {
    printf("\n");
    sum=0;
     for(j=0;j<c;j++)
     {
      printf("enter marks of student no %d for '%s' subject(note:MAX. M=100):\t",i+1,std[j].sb_name);
      scanf("%d",&ary[i][j]);
     /* if(ary[i][j]>100)
      {
       printf("\n\noops..! wrong input. re-enter marks:\n\n");
       i--;
       j--;
       continue;
       }  */
      sum=sum+ary[i][j];
     }
    std[i].total=sum;
   std[i].p_age=(float)sum/(c*100)*100;
   }
   clrscr();
   printf("\n\nthe given data are as follows:\n\n\n");
   printf("names\t");
 for(i=0;i<c;i++)
 {
  printf("%s\t",std[i].sb_name);
 }
 printf("total\tm.marks\t%age\tgrades\n\n");

 for(i=0;i<r;i++)
 {
  printf("\n");
  printf("%s\t",std[i].std_name);
  for(j=0;j<c;j++)
  {
   printf("%d\t",ary[i][j]);
  }
  printf("%d\t",std[i].total);
  printf("%d\t",c*100);
  printf("%.1f %\t",std[i].p_age);
  if(std[i].p_age>=90)
  {
  printf("A grade");
  }
  if(std[i].p_age>=85 && std[i].p_age<90)
  {
  printf("B grade");
  }
  if(std[i].p_age>=75 && std[i].p_age<80)
  {
  printf("C grade");
  }
  if(std[i].p_age>=40 && std[i].p_age<75)
  {
  printf("1st division");
  }
  if(std[i].p_age<40)
  {
   printf("FAIL");
  }
 }
  getch();
  }