#include<iostream>
#include<string>
#include<vector>
#pragma once
using namespace std;

class GameEntity {
    protected:
        string name;
        string apperence;
        char symbol;
    public:
       GameEntity(string n, string a, char s) : name(n), apperence(a), symbol(s) {} 

       virtual void render() = 0;
       virtual void update() = 0;
       virtual void load() = 0;

        void display() {
            cout << "displaying game entity" << endl;
        }
};

class Character : public GameEntity {
    public:
        Character(string n, string a, char s) : GameEntity(n, a, s) {}
        void render() override {
            cout << "Rendering character: " << name << apperence << endl;
        }

        void update() override {
            apperence += symbol;
            cout << "Updating character: " << name << apperence << endl;
        }

        void load() override {
            cout << "Loading character: " << name << apperence << endl;
        }
};

class Item : public GameEntity {
    public:
        Item(string n, string a, char s) : GameEntity(n, a, s) {}
        void render() override {
            cout << "Rendering item: " << name << apperence << endl;
        }

        void update() override {
            cout << "Updating item: " << name << apperence << endl;
        }

        void load() override {
            cout << "Loading item: " << name << apperence << endl;
        }
};