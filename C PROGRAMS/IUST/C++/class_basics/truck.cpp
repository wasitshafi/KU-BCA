#include<iostream>
#include"truck.h"

using namespace std;

void truck::set_data()
{
        cout << "Enter brand name:\t";
        cin >> brand_name;

        do{
                cout <<endl<< "Enter Max. speed:\t";
                cin >> max_speed;

                if(max_speed <=0) cout << "Invalid input...!" << endl;
        }while(max_speed <= 0);

}
void truck::get_data()
{
        cout << endl << "Brand name = " << brand_name << endl << "Max. speed = " << max_speed << endl;
}
