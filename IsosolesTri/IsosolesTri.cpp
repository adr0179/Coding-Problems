#include<iostream>
#include<string>
using namespace std;

void IsosolesTri(int length) {
    for (int i = 0; i < length; i++) {
        for (int j = length - 1; j > i; j--) {
            cout << " ";
        }

        for (int k = 0; k < 2*i + 1; k++) {
            cout << i + 1;
        }

        cout << endl;
    }
}

int main() {
    IsosolesTri(5);
}