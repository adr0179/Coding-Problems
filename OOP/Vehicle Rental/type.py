from vehicle import Vehicle

class Car(Vehicle):
    def __init__(self, vehicle_id, brand, model, rental_price_per_day, fuel_type):
        super().__init__(vehicle_id, brand, model, rental_price_per_day)
        self.__fuel_type = fuel_type

    def display(self):
        super().display()
        print(f'Fuel Type: {self.__fuel_type}')

class Bike(Vehicle):
    def __init__(self, vehicle_id, brand, model, rental_price_per_day):
        super().__init__(vehicle_id, brand, model, rental_price_per_day)
        self.__helmet_required = True

    def display(self):
        super().display()
        print(f"Helmet Required: {'Yes' if self.__helmet_required else 'No'}")

class Scooter(Vehicle):
    def __init__(self, vehicle_id, brand, model, rental_price_per_day):
        super().__init__(vehicle_id, brand, model, rental_price_per_day)
        self.__helmet_required = True

    def display(self):
        super().display()
        print(f"Helmet Required: {'Yes' if self.__helmet_required else 'No'}")