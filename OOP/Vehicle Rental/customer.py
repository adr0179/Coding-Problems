from vehicle import Vehicle

class Customer:
    def __init__(self, name):
        self.__name = name
        self.__rented_vehicle = None

    def rent_vehicle(self, v):
        if(v.available == True):
            v.rent()
            self.__rented_vehicle = v
    
    def return_back(self):
        self.__rented_vehicle.return_vehicle()
        self.__rented_vehicle = None