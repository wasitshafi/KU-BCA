#include<iostream>
#include<string>

using namespace std;

template <typename T> T add(T a, T b){
  return a + b;
}
int main()
{
cout << "2 + 3 = " << add(2, 3) << endl;
cout << "Adding two doubles " << add(2.5, 5.6) << endl;
cout << "hello + world = "<< add(string("hello"), string("world")) << endl;
return 0;
}
