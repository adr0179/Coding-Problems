#include<iostream>
using namespace std;

void rightAngleTri(int length) {
    for (int i = 0; i < length; i++) {
        for (int j = -1; j < i; j++) {
            cout << i + 1;
        }
        cout << endl;
    }
}

void reversedRightTri(int length) {
    for (int i = 0; i < length; i++) {
        for (int j = length - 1; j > i; j--) {
            cout << " ";
        }

        for (int k = -1; k < i; k++) {
            cout << i + 1;
        }

        cout << endl;
    }
}

void reversedRightTri2(int length) {
    for (int i = 0; i <= length; i++) {
        for (int j = length; j > 0; j--) {
            if (j > i)
                cout << " ";
            else
                cout << i;
        }

        // for (int k = -1; k < i; k++) {
        //     cout << i + 1;
        // }

        cout << endl;
    }
}

int main() {
    rightAngleTri(9);
    reversedRightTri(9);
    reversedRightTri2(9);
}