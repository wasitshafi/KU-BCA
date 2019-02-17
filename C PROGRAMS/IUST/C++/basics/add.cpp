#include<iostream>

int main()
{
  int a{0}, b{0}, sum{0};

  std::cout << "Enter two numbers:\t";
  std::cin >> a >> b;

  sum = a + b;
  std::cout << "sum of " << a << " and " << b << " is " << sum << ".";

}
