#include<stdio.h>
#include<conio.h>
#include<stdlib.h>
int func_once(int plc1);
int func_tens(int plc2);
int func_hundred(int plc3);
int func_thousand(int plc4);
int func_tenthousand(int plc5);
int func_reverse(long int n);
int len=0;                 /*global var.*/
void main()
 {
long int num,rem,reverse_num;
 clrscr();
 printf("\n\nenter amount upto 10,00,00 ( one lakh ):\t");
 scanf("%ld",&num);
 if(num>100000)
 {
  printf("\n\nopps...! limit exceeds.");
  getch();
  exit(0);
  }
 if(num==100)
  {
   printf("\n\ngiven amount is : rupees one hundred only.");
   getch();
   exit(0);
  }
  if(num==1000)
  {
    printf("\n\ngiven amount is :rupees one thousand only.");
   getch();
   exit(0);
  }
  if(num==10000)
  {
   printf("\n\ngiven amount is : rupees ten thousand only.");
   getch();
   exit(0);
  }
  if(num==100000)
  {
   printf("\n\ngiven amount is : rupees one lakh only.");
   getch();
   exit(0);
  }
 printf("\n\n\ngiven amount is : rupees  ");
 if(num<=10)
  {
   if(num==0)
    {
    printf("zero");
    }
    if(num==1)
     {
     printf("one");
     }
     if(num==2)
      {
      printf("two");
      }
      if(num==3)
       {
       printf("three");
       }
	if(num==4)
	{
	printf("four");
	}
	 if(num==5)
	 {
	 printf("five");
	 }
	  if(num==6)
	  {
	  printf("six");
	  }
	   if(num==7)
	   {
	   printf("seven");
	   }
	    if(num==8)
	    {
	    printf("eight");
	    }
	     if(num==9)
	     {
	     printf("nine");
	     }
	      if(num==10)
	      {
	      printf("ten");
	      }
 }
  else
  if(num>10 && num<=19)
  {
   if(num==11)
   {
   printf("eleven");
   }
    if(num==12)
    {
    printf("twelve");
    }
     if(num==13)
     {
     printf("thirteen");
     }
      if(num==14)
      {
      printf("fourteen");
      }
       if(num==15)
       {
       printf("fifteen");
       }
	if(num==16)
	{
	printf("sixteen");
	}
	 if(num==17)
	 {
	 printf("seventeen");
	 }
	  if(num==18)
	  {
	  printf("eighteen");
	  }
	   if(num==19)
	   {
	   printf("nineteen");
	   }
 }



  if(num>=20 && num<100000)
  {
  reverse_num=func_reverse(num);/*function call for computing reverse of a no.*/
  }


   printf("\n\nreverse of no. is \t%ld\n",reverse_num);


  if(num>=20 && num<100000)
  {
   while(reverse_num!=0)
   {
    rem=reverse_num%10;
    if(len==5)            /* len=lenght of a numbers & its a global varable*/
     {
      func_tenthousand(rem);
      }
    if(len==4)
     {
      func_thousand(rem);
      }
    if(len==3)
    {
    func_hundred(rem);
    }
    if(len==2)
    {
     func_tens(rem);
    }
    if(len==1)
    {
     func_once(rem);
    }
    reverse_num=reverse_num/10;
    len--;
  }
  }
  printf(" only.");
  getch();
  }







int func_reverse(long int n)
  {
 long int rem,rev=0;        /*func. for reverse of number*/
  while(n!=0)
  {
  rem=n%10;
  len++;     /*global varable*/
  rev=(rev*10)+rem;
  n=n/10;
  }
  return(rev);
  }


int func_once(int plc1)
 {                         /*func for printing unit place digit*/
   if(plc1==0)
    {
    printf("");
    }
    if(plc1==1)
     {
     printf("one ");
     }
     if(plc1==2)
      {
      printf("two ");
      }
      if(plc1==3)
       {
       printf("three ");
       }
	if(plc1==4)
	{
	printf("four ");
	}
	 if(plc1==5)
	 {
	 printf("five ");
	 }
	  if(plc1==6)
	  {
	  printf("six ");
	  }
	   if(plc1==7)
	   {
	   printf("seven ");
	   }
	    if(plc1==8)
	    {
	    printf("eight ");
	    }
	     if(plc1==9)
	     {
	     printf("nine ");
	     }
 }

int func_tens(int plc2)
 {                           /*func for printing tens place digit*/
     if(plc2==2)
      {
      printf("twenty ");
      }
      if(plc2==3)
       {
       printf("thirty ");
       }
	if(plc2==4)
	{
	printf("fourty ");
	}
	 if(plc2==5)
	 {
	 printf("fifty ");
	 }
	  if(plc2==6)
	  {
	  printf("sixty ");
	  }
	   if(plc2==7)
	   {
	   printf("seventy ");
	   }
	    if(plc2==8)
	    {
	    printf("eighty ");
	    }
	     if(plc2==9)
	     {
	     printf("ninety ");
	     }
}
int func_hundred(int plc3)
 {                           /*func for printing hundred place digit*/
     if(plc3==2)
      {
      printf("two hunderd ");
      }
      if(plc3==3)
       {
       printf("three hundred ");
       }
	if(plc3==4)
	{
	printf("four hundred ");
	}
	 if(plc3==5)
	 {
	 printf("five hundred ");
	 }
	  if(plc3==6)
	  {
	  printf("six hundred ");
	  }
	   if(plc3==7)
	   {
	   printf("seven hundred ");
	   }
	    if(plc3==8)
	    {
	    printf("eight hundred ");
	    }
	     if(plc3==9)
	     {
	     printf("nine hundred ");
	     }
 }
int func_thousand (int plc4)
 {
  if(plc4==1)
  {
   printf("one thousand ");
  }
   if(plc4==2)
    {
    printf("two thousand  ");
    }
      if(plc4==3)
       {
       printf("three thousand ");
       }
	if(plc4==4)
	{
	printf("four thousand ");
	}
	 if(plc4==5)
	 {
	 printf("five thousand ");
	 }
	  if(plc4==6)
	  {
	  printf("six thousand ");
	  }
	   if(plc4==7)
	   {
	   printf("seven thousand ");
	   }
	    if(plc4==8)
	    {
	    printf("eight thousand  ");
	    }
	     if(plc4==9)
	     {
	     printf("nine thousand ");
	     }
}
int func_tenthousand(int plc5)
 {
  if(plc5==2)
      {
      printf("twenty-");
      }
      if(plc5==3)
       {
       printf("thirty-");
       }
	if(plc5==4)
	{
	printf("fourty-");
	}
	 if(plc5==5)
	 {
	 printf("fifty-");
	 }
	  if(plc5==6)
	  {
	  printf("sixty-");
	  }
	   if(plc5==7)
	   {
	   printf("seventy-");
	   }
	    if(plc5==8)
	    {
	    printf("eighty-");
	    }
	     if(plc5==9)
	     {
	     printf("ninety-");
	     }
}