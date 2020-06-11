#include"stdio.h"
#include"conio.h"
#include"math.h"
#include"graphics.h"
void ST_Calculator();
void SC_Calculator();
void main()
{
 char choice;
 clrscr();
 printf("1 for standard calcutator.\n");
 printf("2 for scientific calculator.\n");
 printf("0 for exit");
 printf("\n\nChoose calculator:");
 while(1)
 {

  choice= getche();
  if (choice=='1')
  {
  ST_Calculator();
  }else if (choice =='2')
  {
  SC_Calculator();
  }else if(choice =='0')
  {
break;
  }else
  { //invalid input
  }
 }
}

void ST_Calculator()
{
clrscr();
textcolor(CYAN);
cprintf("0 for main menu.");
textcolor(LIGHTGRAY);
while(1)
 {
  char choice;
  printf("\n\nChoose operand(+,-,*,/):");
  choice=getche();
  if(choice=='+' || choice=='-' || choice=='*' || choice=='/')
  {
   float n1,n2;
   switch(choice)
   {
    case '+':
    printf("\nEnter 2 operands:");
    scanf("%f%f",&n1,&n2);
    printf("\nResult (%.1f + %.1f) = %.1f.",n1,n2,n1+n2);
    break;
    case '-':
    printf("\nEnter 2 operands:");
    scanf("%f%f",&n1,&n2);
    printf("\nResult (%.1f - %.1f) = %.1f.",n1,n2,n1-n2);
    break;
    case '*':
    printf("\nEnter 2 operands:");
    scanf("%f%f",&n1,&n2);
    printf("\nResult (%.1f * %.1f) = %.1f.",n1,n2,n1*n2);
    break;
    // division case
    case '/':
    printf("\nEnter 2 operands:");
    scanf("%f%f",&n1,&n2);
    if(n2==0)
	{
     while(1)
     {
      int i;
      textcolor(LIGHTRED+BLINK);
      cprintf("\r\nCan't divide by 0.");
      sound(300);
      delay(60);
      nosound();
      textcolor(LIGHTGRAY);
      printf("\nPlease enter 2nd operand again: ");

      scanf("%f",&n2);
      if(n2 != 0)
      break;
     }
	}
    printf("\nResult (%.1f / %.1f) = %.1f.",n1,n2,n1/n2);
    break;
    //end of division case
   }
   printf("\n----------------------------");
  }
  else if(choice=='0')
   {
    clrscr();
    printf("1 for standard calcutator.\n");
    printf("2 for scientific calculator.\n");
    printf("0 for exit");
    printf("\nChoose calculator:");
    return;
   }
  else
  {
    textcolor(RED);
    cprintf("\toOps..! invalid input. Try again....\n");
    textcolor(LIGHTGRAY);
  }
 }
}


void SC_Calculator()
{
 char choice;
 clrscr();
 textcolor(CYAN);
 cprintf("0 for main menu.");
 cprintf("\r\nc for clear screen.");
 textcolor(LIGHTGRAY);
 printf("\n\n1-Square.\
	  \n2-Cube.\
	  \n3-Square root.\
	  \n4-X^Y.\
	  \n5-Log(x).\
	  \n6-Ln(x).\
	  \n7-Sin(x).\
	  \n8-Cos(x).\
	  \n9-Tan(x).");
 while(1)
 {
  printf("\nChoose operation:");
  choice = getche();
  if(choice=='1' || choice=='2' || choice=='3' || choice=='4' || choice=='5'|| choice=='6' || choice=='7' || choice=='8' || choice=='9')
  {
   float n1,n2,r;
   switch(choice)
   {
    case '1':  //square
    printf("\nEnter any number: ");
    scanf("%f",&n1);
    printf("\nSquare of %.2f is %.2f.",n1,n1*n1);
    break;
    case '2':  //cube
    printf("\nEnter any number: ");
    scanf("%f",&n1);
    printf("\nCube of %.2f is %.2f.",n1,n1*n1*n1);
    break;
    case '3':  //square root
    printf("\nEnter any number: ");
    scanf("%f",&n1);
    printf("\nSquare root of %.2f is %.2f.",n1,sqrt(n1));
    break;
    case '4':  //X^Y
    printf("\nEnter base: ");
    scanf("%f",&n1);
    printf("\nEnter power/degree: ");
    scanf("%f",&n2);
    printf("\n%.2f^%.2f=%.2f.",n1,n2,pow(n1,n2));
    break;
    case'5':
    printf("\nEnter value of X: ");
    scanf("%f",&n1);
    printf("\nLog(%.2f) = %.2f.",n1,log10(n1));
    break;
    case'6':
    printf("\nEnter value of X: ");
    scanf("%f",&n1);
    printf("\nLn(%.2f) = %.2f.",n1,log(n1));
    break;
    case'7':
    printf("\nEnter value of X: ");
    scanf("%f",&n1);
    printf("\nSin(%.2f) = %.2f.",n1,sin(n1));
    break;
    case'8':
    printf("\nEnter value of X: ");
    scanf("%f",&n1);
    printf("\nCos(%.2f) = %.2f.",n1,cos(n1));
    break;
    case'9':
    printf("\nEnter value of X: ");
    scanf("%f",&n1);
    printf("\nTan(%.2f) = %.2f.",n1,tan(n1));
    break;
   }
   printf("\n----------------------------");
  }
  else if(choice=='0')
   {
    clrscr();
    printf("1 for standard calcutator.\n");
    printf("2 for scientific calculator.\n");
    printf("0 for exit");
    printf("\nChoose calculator:");
    return;
   }
   else if(choice =='c' || choice=='C')
   {
    clrscr();
    textcolor(CYAN);
    cprintf("0 for main menu.");
    cprintf("\r\nc for clear screen.");
    textcolor(LIGHTGRAY);
    printf("\n\n1-Square.\
	  \n2-Cube.\
	  \n3-Square root.\
	  \n4-X^Y.\
	  \n5-Log(x).\
	  \n6-Ln(x).\
	  \n7-Sin(x).\
	  \n8-Cos(x).\
	  \n9-Tan(x).");
   }
  else
  {
   textcolor(RED);
   cprintf("\r\noOps..! invalid input. Try again....\n");
   textcolor(LIGHTGRAY);
  }
 }
}