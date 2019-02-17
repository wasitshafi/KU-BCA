//
//jmi_p51.c
//
//program to count no of keywords in c program

#include<stdio.h>

int main()
{	
    int count[33]={0};
	char keywords[32][9] = {"auto", "break", "case", "char", "const", "continue", "default", "do", "double", "else", "enum", "extern", "float", "for", "goto", "if", "int", "long", "register", "return", "short", "signed", "sizeof", "static", "struct", "switch", "typedef", "union", "unsigned", "void", "volatile", "while"};
	char str[500], filename[15];
	FILE *fptr;
	
	printf("\nEnter file name:\t");
	gets(filename);
	
	fptr = fopen(filename,"r");
	
	if(!fptr)
	{
		perror("Error occurred :");
		return -1;
	}
	else
	{	
	 printf("\nSource code of file \'%s\' is:\n\n", filename);
	 
	 while(!feof(fptr))
	 {
	  fgets(str,sizeof(str),fptr);  // fgets reads data line by line
	  
	  puts(str);
	  
	  if(strchr(str,keywords[0])) // assuming that one line contain atmost 1 keyword of same type
	  {
	    count[0]++;
	    count[32]++;                          
	  }
	  if(strchr(str,keywords[1]))
	  {
	    count[1]++;
	    count[32]++;                          
	  }
	  if(strchr(str,keywords[2]))
	  {
	    count[2]++;
	    count[32]++;
	  }
	  if(strchr(str,keywords[3]))
	  {
	    count[3]++;
	    count[32]++;
	  }
	  if(strchr(str,keywords[4]))
	  {
	    count[4]++;
	    count[32]++;
	  }
	  if(strchr(str,keywords[5]))
	  {
	    count[5]++;
	    count[32]++;
	  }
	  if(strchr(str,keywords[6]))
	  {
	    count[6]++;
	    count[32]++;
	  }
	  if(strchr(str,keywords[7]))
	  {
	    count[7]++;
	    count[32]++;
	  }
	  if(strchr(str,keywords[8]))
	  {
	    count[8]++;
	    count[32]++;
	  }
	  if(strchr(str,keywords[9]))
	  {
	    count[9]++;
	    count[32]++;
	  }
	  if(strchr(str,keywords[10]))
	  {
	    count[10]++;
	    count[32]++;
	  }
	  if(strchr(str,keywords[11]))
	  {
	    count[11]++;
	    count[32]++;
	  }
	  if(strchr(str,keywords[12]))
	  {
	    count[12]++;
	    count[32]++;
	  }
	  if(strchr(str,keywords[13]))
	  {
	    count[13]++;
	    count[32]++;
	  }
	  if(strchr(str,keywords[14]))
	  {
	    count[14]++;
	    count[32]++;
	  }
	  if(strchr(str,keywords[15]))
	  {
	    count[15]++;
	    count[32]++;
	  }
	  if(strchr(str,keywords[16]))
	  {
	    count[16]++;
	    count[32]++;
	  }
	  if(strchr(str,keywords[17]))
	  {
	    count[17]++;
	    count[32]++;
	  }
	  if(strchr(str,keywords[18]))
	  {
	    count[18]++;
	    count[32]++;
	  }
	  if(strchr(str,keywords[19]))
	  {
	    count[19]++;
	    count[32]++;
	  }
	  if(strchr(str,keywords[20]))
	  {
	    count[20]++;
	    count[32]++;
	  }
	  if(strchr(str,keywords[21]))
	  {
	    count[21]++;
	    count[32]++;
	  }
	  if(strchr(str,keywords[22]))
	  {
	    count[22]++;
	    count[32]++;
	  }
	  if(strchr(str,keywords[23]))
	  {
	    count[23]++;
	    count[32]++;
	  }
	  if(strchr(str,keywords[24]))
	  {
	    count[24]++;
	    count[32]++;
	  }
	  if(strchr(str,keywords[25]))
	  {
	    count[25]++;
	    count[32]++;
	  }
	  if(strchr(str,keywords[26]))
	  {
	    count[26]++;
	    count[32]++;
	  }
	  if(strchr(str,keywords[27]))
	  {
	    count[27]++;
	    count[32]++;
	  }
	  if(strchr(str,keywords[28]))
	  {
	    count[28]++;
	    count[32]++;
	  }
	  if(strchr(str,keywords[29]))
	  {
	    count[29]++;
	    count[32]++;
	  }
	  if(strchr(str,keywords[30]))
	  {
	    count[30]++;
	    count[32]++;
	  }
	  if(strchr(str,keywords[31]))
	  {
	    count[31]++;
	    count[32]++;
	  }
	  if(strchr(str,keywords[32]))
	  {
	    count[32]++;
	    count[32]++;
	  }	                  
	 }
    }
    
    
    printf("\nTotal Keywords is = %d",count[32]);
	
	printf("\nNO of auto is  = %d.", count[0]); 
	printf("\nNo of break is = %d.", count[1]);
	printf("\nNo of case is = %d.", count[2]);
	printf("\nNo of char is = %d.", count[3]);
	printf("\nNo of const is = %d.", count[4]);
	printf("\nNo of continue is = %d.", count[5]);
	printf("\nNo of default is = %d", count[6]);
	printf("\nNo of do is = %d", count[7]);
	printf("\nNo of double is = %d", count[8]);
	printf("\nNo of else is = %d", count[9]);
	printf("\nNo of enum is = %d", count[10]);
	printf("\nNo of extern is = %d", count[11]);
	printf("\nNo of float is = %d", count[12]);
	printf("\nNo of for is = %d", count[13]);
	printf("\nNo of goto is = %d", count[14]);
	printf("\nNo of if is = %d", count[15]);
	printf("\nNo of int is = %d", count[16]);
	printf("\nNo of long is = %d", count[17]);
	printf("\nNo of register is = %d", count[18]);
	printf("\nNo of return is = %d", count[19]);
	printf("\nNo of short is = %d", count[20]);
	printf("\nNo of signed is = %d", count[21]);
	printf("\nNo of sizeof is = %d", count[22]);
	printf("\nNo of static is = %d", count[23]);
	printf("\nNo of struct is = %d", count[24]);
	printf("\nNo of switch is = %d", count[25]);
	printf("\nNo of typedef is = %d", count[26]);
	printf("\nNo of union is = %d", count[27]);
	printf("\nNo of unsigned is = %d", count[28]);
	printf("\nNo of void is = %d", count[29]);
	printf("\nNo of volatile is = %d", count[30]);
	printf("\nNo of while is = %d", count[31]);
	
	return 0;
	}
