#include<stdio.h>
#include<conio.h>
#include<time.h>
void main()
 {
  double total;
  clock_t start,end;
  int ary[50][50],ttl_ary[10],sum,i,j,r,c;
  float p_age[50];
  clrscr();
  start=clock();
  printf("enter no of students:\t");
  scanf("%d",&r);
  clrscr();
  printf("\nenter no of subjects:\t");
  scanf("%d",&c);
  struct subject_name{
		   char std_name[15];
		   char sb_name[15];
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
      if(ary[i][j]>100)
      {
       printf("\n\noops..! wrong input. re-enter marks:\n\n");

       j--;
       continue;
       }
      sum=sum+ary[i][j];
     }
    ttl_ary[i]=sum;
    p_age[i]=(float)sum/(c*100)*100;
   }
   clrscr();
   printf("\n\nthe given data are as follows:\n\n\n");
   printf("names\t");
 for(i=0;i<c;i++)
 {
  printf("%s\t",std[i].sb_name);
 }
 printf("total\t%age\tgrades\n\n");

 for(i=0;i<r;i++)
 {
  printf("\n");
  printf("%s\t",std[i].std_name);
  for(j=0;j<c;j++)
  {
   printf("%d\t",ary[i][j]);
  }
  printf("%d\t",ttl_ary[i]);
  printf("%.1f %\t",p_age[i]);
   if(ttl_ary[i]>=90)
  {
  printf("A grade");
  }
  if(ttl_ary[i]>=85 && ttl_ary[i]<90)
  {
  printf("B grade");
  }
  if(ttl_ary[i]>=75 && ttl_ary[i]<80)
  {
  printf("C grade");
  }
  if(ttl_ary[i]>=40 && ttl_ary[i]<75)
  {
  printf("1st division");
  }
  if(ttl_ary[i]<40)
  {
   printf("FAIL");
  }
 }
 end=clock();
 total=((double) (end-start))/CLK_TCK;
 printf("\ntotal time taken by this programe=\t%.2f",total);
  getch();
  }