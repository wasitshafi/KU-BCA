
#include <iostream>

using namespace std;

class car {
string brand_name;
int max_speed;

public:
void setdata()
{
        cout << "Enter brand name:\t";
        cin >> brand_name;

        do{
                cout <<endl<< "Enter Max. speed:\t";
                cin >> max_speed;

                if(max_speed <=0) cout << "Invalid input...!" << endl;
        }while(max_speed <= 0);

}
void getdata()
{
        cout << endl << "Brand name = " << brand_name << endl << "Max. speed = " << max_speed << endl;
}
};
