#include <iostream>

using namespace std;

class bike {
string brand_name;
int max_speed;

public:
explicit bike(string name, int speed) :brand_name {name},max_speed{speed}
{
}

void set_data()
{
        cout << endl << "Enter brand name :\t";
        cin >> brand_name;

        cout << endl << "Enter max_speed : \t";
        cin >> max_speed;
}

void get_data()
{

        cout << endl << " Bike brand name is " << brand_name << " & max. speed is " << max_speed << ".";

}

};
