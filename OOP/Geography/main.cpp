#include "geography.cpp"

int main(){
    Geography::Coordinate<float>cord(50.77); 
    cord.show(); 
    
    Geography::Coordinate<int>cordInt(20,40,60);
    cordInt.show(); 

    Geography::Coordinate<std::string>cordStr("65 45 39");
    cordStr.show();

    Geography::Coordinate<std::string>cordStr2("165 145 139");

    Geography::Location<std::string> sloc;
    sloc.coordinates.first = &cordStr;
    sloc.coordinates.second = &cordStr2;
    sloc.name = "Space";
    // sloc.display();

    Geography::Location<std::string> sloc2;
    sloc2.coordinates.first = &cordStr2;
    sloc2.coordinates.second = &cordStr2;
    sloc2.name = "Space #2";

    std::map<std::string, Geography::Location<std::string>*> myMap;
    myMap[sloc.name] = &sloc;
    myMap[sloc2.name] = &sloc2;
    // myMap[sloc2.name]->display();
    
    for (std::pair<std::string, Geography::Location<std::string>*> myPair : myMap) {
        myPair.second->display();
    }
    
    // std::cout << "Length = " << Topo::mapLength << std::endl;
    // std::cout << "Width = " << Topo::mapWidth << std::endl;
    
    // using namespace Topo;
    // std::cout << "The Map Length is  " << mapLength << std::endl;
    // std::cout << "The Map Width is  " << mapWidth << std::endl;
    // std::cout << "The Map Area is  " << mapArea() << std::endl;
}