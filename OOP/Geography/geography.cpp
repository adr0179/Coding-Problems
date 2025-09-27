#include<iostream>
#include<string>
#include<sstream>
#include <map>

namespace Geography {
    template<typename T>
        class Coordinate {
            private:
                T degrees;
                T min;
                T sec;
            public:
                Coordinate(float d) : degrees(d) {}
                Coordinate(int d, int m, int s) : degrees(d), min(m), sec(s) {}

                void show() {
                    std::cout << "The Degrees values:  " << degrees << std::endl;
                    std::cout << "The Minutes values: " << min << std::endl;
                    std::cout << "The Seconds values: " << sec << std::endl;
                }
        };
    namespace Topography {
        float mapLength = 30.0;
        float mapWidth = 20.6;
        float mapArea() {return mapWidth * mapLength;}
    }

    template<>
        class Coordinate<std::string>{
            private:
                std::string degrees;
                std::string min;
                std::string sec;
            public:
                Coordinate(const std::string &str) {
                    std::istringstream iss(str);
                    iss >> degrees >> min >> sec;
                }

                void show() {
                    std::cout << "The Degrees values:  " + degrees << std::endl;
                    std::cout << "The Minutes values: " + min << std::endl;
                    std::cout << "The Seconds values: " + sec << std::endl;
                }
        };

    template<typename T>
        class Location {
            public:
                std::pair<Coordinate<T>*, Coordinate<T>*> coordinates;
                std::string name;
                void display() {
                    std::cout << name << " has coordinates:" << std::endl;
                    coordinates.first->show();
                    coordinates.second->show();
                }
        };
}

namespace Topo = Geography::Topography;