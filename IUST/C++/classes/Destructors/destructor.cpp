#include<iostream>

using namespace std;

class Destructor{
  string name;
public:
  Destructor(string n): name {n}
  {
    cout << "Creating " << name << endl;
  }
  ~Destructor(){
    cout << "Destroying  " << name << endl;
  }

};

void allocate()
{
  Destructor  localVar1 {"localVar"};
  static Destructor  static_localVar1 {"static_localVar"};
}

Destructor GlobalVar {"GlobalVar"};

int main(){
    cout << "Inside main()" << endl << endl;
    cout << "Calling allocate()" << endl;
    allocate();
    cout << endl << "Calling allocate() once more" << endl;
    allocate();
    return 0;
  }
