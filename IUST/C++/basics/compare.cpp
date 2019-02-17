#include<iostream>

using namespace std;

int main()
{
  int n1{0}, n2{0};

  cout << "Enter two integers : \t";
  cin >> n1 >> n2;

  cout << n1 << " == " << n2 << " = " << (n1==n2) << endl;
  cout << n1 << " >  " << n2 << " = " << (n1>n2) << endl;
  cout << n1 << " <  " << n2 << " = " << (n1<n2) << endl;
  cout << n1 << " >= " << n2 << " = " << (n1>=n2) << endl;
  cout << n1 << " <= " << n2 << " = " << (n1<=n2) << endl;
  cout << n1 << " != " << n2 << " = " << (n1!=n2) << endl;


  return 0;


}
