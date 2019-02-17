#include<iostream>
#include"rational.h"
using namespace std;

int main()
{
  Rational p{1};
  Rational q{1,4};   // {1,0}   error at run time
  Rational r{3,5};

  cout << "p = "<< p.to_string()<<endl;
  cout << "q = "<< q.to_string()<<endl;
  cout << "r = "<< r.to_string()<<endl;
}
