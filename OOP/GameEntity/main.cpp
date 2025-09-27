#include "create.cpp"

int main() {
    vector<GameEntity*> entities;
    
    Character c("Pacman", ">", 'O');
    Item it("Power Pellet", "dot", ' ');
    Item it2("Power Pellet 2", "dot", ' ');
    entities.push_back(&c);
    entities.push_back(&it);
    entities.push_back(&it2);

    c.load();
    it.load();
    it2.load();

    string input = "";
    while(input != "X") {
        for (GameEntity* ge : entities) {
            ge->update();
            ge->update();
        }
        cout << "Enter X to exit, enter C for a new character, I for a new item, or enter to continue: " << endl;
        getline(cin, input);
        if (input == "C") {
            entities.push_back(createEntity('C'));
        } else if (input == "I") {
            entities.push_back(createEntity('I'));
        }
    }
}