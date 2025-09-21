#include<iostream>
#include<string>
using namespace std;

void isosolesTri(int length) {
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

void invertedTri(int length) {
    for (int i = length; i > 0; i--) {
        for (int j = length; j > i; j--) {
            cout << " ";
        }

        for (int k = 0; k < 2*i - 1; k++) {
            cout << i;
        }

        cout << endl;
    }
}

int main() {
    isosolesTri(5);
    invertedTri(5);
}