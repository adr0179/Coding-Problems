#include "gameEntity.cpp"

GameEntity* createEntity(char entityType) {
    string name; string apperence; string symbol;
    cout << "Enter the entity name: " << endl;
    getline(cin, name);

    cout << "Enter the entity apperence: " << endl;
    getline(cin, apperence);

    cout << "Enter the entity symbol: " << endl;
    getline(cin, symbol);

    if (entityType == 'C') {
        return new Character(name, apperence, symbol[0]);
    } else {
        return new Item(name, apperence, symbol[0]);
    }
}