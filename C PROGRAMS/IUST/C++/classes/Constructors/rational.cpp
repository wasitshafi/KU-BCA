#include<iostream>
#include"rational.h"
#include <string>
#include <sstream>
#include <exception>

Rational::Rational(int n, int d):num{n},denom{d}
{
  if (denom == 0)
   throw invalid_argument("Denominator can't be zero.");
}
int Rational::get_num() const
{
  return num;
}
int Rational::get_denom() const
{
  return denom;
}
string Rational::to_string()
{
  stringstream s;
  s << num << "/" << denom;
  return s.str();

}
