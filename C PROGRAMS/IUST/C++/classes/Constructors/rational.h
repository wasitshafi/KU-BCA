#include<iostream>

using namespace std;

class Rational{
  int num;
  int denom;
public:
  Rational(int n, int d=1);
  int get_num() const;
  int get_denom() const;
  string to_string() ;

};
