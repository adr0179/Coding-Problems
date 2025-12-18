from vehicle import Vehicle

class Rental_System:
    def __init__(self):
        self.__vehicles = []

    def add_vehicle(self, v):
        self.__vehicles.append(v)

    def display_available_vehicles(self):
        for v in self.__vehicles:
            if (v.available):
                v.display()

    def find_vehicle(self, id):
        for v in self.__vehicles:
            if v.getID() == id:
                return v
        print("Could not find vehicle")