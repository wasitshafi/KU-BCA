#include<iostream>

using std::cin;
using std::cout;  // or only using namespace std;
using std::endl;

int main()
{
  int n, arr[20], sum{0}, i;

  cout << "Enter no. of observations:\t";
  cin >> n;

  for(i = 0 ; i < n ; i++)
  {
    cout << endl << i + 1 << " >  ";
    cin >> arr[i];
  }

  for(i = 0 ; i < n ; i++)
  {
   sum = sum + arr[i];
  }

  cout << endl << "Average = " << (float)sum/n << endl;



}
