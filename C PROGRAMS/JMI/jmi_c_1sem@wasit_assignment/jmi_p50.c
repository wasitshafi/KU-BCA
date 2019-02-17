//
//jmi_p50.c
//
//programe to rename a file

#include<stdio.h>

int main()
{
  char old_file_name[20], new_file_name[20];
  int status;
  
  printf("\n\nEnter file name you want to rename:\t");
  scanf("%s", old_file_name);
  
  status = rename(old_file_name, new_file_name);  // return 0 if file/dir found
  
    if(!status)  
    { 
      printf("\n\nEnter new file name :\t");
      scanf("%s", new_file_name);
       
	  printf("File name changed successfully"); 
    } 
    else
      perror("Error:"); 
  
    return 0; 
} 
