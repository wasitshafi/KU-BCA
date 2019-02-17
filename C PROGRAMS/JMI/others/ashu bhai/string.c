//
//
//
//
#include<stdio.h>
#include<strings.h>

int main()
{
	int no_of_strings, no_of_test_cases, *string_count, i,j;
	char strings[100][32], test_case_strings[100][32];
	
	scanf("%d", &no_of_strings);
	fflush(stdin);
	
	for( i = 0 ; i < no_of_strings ; i++ )
	 gets(strings[i]);
 
 	scanf("%d", &no_of_test_cases);
    fflush(stdin);
     
    string_count = (int *)calloc(no_of_test_cases , sizeof(int));
	 
	 for( i = 0 ; i < no_of_test_cases ; i++ )
	 gets(test_case_strings[i]);
	 
     for(i = 0 ; i < no_of_test_cases ; i++)
     {
      for(j = 0 ; j < no_of_strings ; j++)
      {
     	if( strcmp(test_case_strings[i], strings[j]) == 0)
     	{
     		(*(string_count + i))++;
 		}
	  } 
     }
	for(i = 0 ; i < no_of_test_cases ; i++)
	  printf("%d\n",*(string_count + i)); 
 
  return 0;
}
