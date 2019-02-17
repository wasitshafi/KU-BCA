//
//
//
//

#include<iostream>
using namespace std;

void modify(int &x, int &y)
{
  x = x ^ y;
  y = x ^ y;
  x = x ^ y;
}

int main()
{
 int x, y;

 cout << "Enter value for x :\t";
 cin >> x;

 cout << "Enter value for y :\t";
 cin >> y;

 cout << endl << "x = " << x << "\t y = " << y;

 modify(x,y);

 cout << endl << "x = " << x << "\t y = " << y;

 return 0;
}
