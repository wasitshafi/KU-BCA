#include<iostream.h>
#include<fstream.h>
#include<conio.h>
#include<stdlib.h>

void main()
{
  clrscr();
  ofstream fout;             /*inserting data into country.txt file*/
  fout.open("country.txt");
  fout<<"\nindia";
  fout<<"\nusa";
  fout<<"\nuk";
  fout.close();

  /*****************************************************************/
//   ofstream fout  //it has already declared
				    /*inserting data into capital.txt file*/
  fout.open("capital.txt");
  fout<<"\ndelhi";
  fout<<"\nwashington";
  fout<<"\nlondon";
  fout.close();

 /*****************************************************************/

  /* reading  data from file country */
  const int n=80;
  char line[80];

  ifstream fin;
  fin.open("country.txt");
  cout<<"\ncontents of file 'country.txt':\n";

  while(1)
  {
  if(fin.eof()!=0)//if eof occurs then it returns 0 else 1
  {
    break;
   }
   else
   {

   fin.getline(line,n);
   cout<<line<<"\n";
   }
  }
  fin.close();
  /****************************************************************/

  /*reading data from file capital */

 // ifstream fin  it has already delared
  fin.open("capital.txt");
  cout<<"\ncontents of file 'capital.txt':\n";

  while(1)
  {
   if(fin.eof()!=0)
   {
    break;
   }
   else
   {
    fin.getline(line,n);
    cout<<line<<"\n";
   }
  }
 fin.close();
 getch();
 }
