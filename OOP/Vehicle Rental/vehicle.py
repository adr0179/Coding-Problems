class Vehicle:
    def __init__(self, vehicle_id, brand, model, rental_price_per_day):
        self.available = True
        self._vehicle_id = vehicle_id
        self._brand = brand
        self._model = model
        self._rental_price_per_day = rental_price_per_day

    def getID(self):
        return self._vehicle_id

    def rent(self):
        self.available = False

    def return_vehicle(self):
        self.available = True
    
    def display(self):
        print(f'Vehicle ID: {self._vehicle_id}, Brand: {self._brand}, Model: {self._model}, Rental Price(Per Day): {self._rental_price_per_day}')