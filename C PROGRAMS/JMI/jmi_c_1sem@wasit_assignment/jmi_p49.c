//
//jmi_p49.c on 11-10-18
//
//program to  copy the content of one file to anothe file

#include<stdio.h>

int main()
{
	FILE *input_fptr, *output_fptr;
	
	char ch, input_file_name[20], output_file_name[20];
	
	printf("\nEnter file name from you want to copy data:\t");
	scanf("%[^\n]", input_file_name);
	
	input_fptr = fopen(input_file_name, "r");
	
	if(!input_fptr)
	{
		perror("Error occurred :");
		return -1;
	}
	else
	{
	 
	 printf("\n\nEnter new file name ( Including file extension ) :\t");
	 
	 fflush(stdin);
	 scanf("%[^\n]", output_file_name);
	 
	 output_fptr = fopen(output_file_name, "a");
		
	 while((ch = fgetc( input_fptr ))  != EOF)
	 {
	 	fputc(ch, output_fptr);
	 }
	 
	 printf("File copied successfully.\n");		  
	}
	
	return 0;
}
