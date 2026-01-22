from customer import Customer
from rentalsystem import Rental_System
from type import Car, Bike, Scooter

def main():
    rental_system = Rental_System()

    # Add some vehicles
    rental_system.add_vehicle(Car(1, "Toyota", "Camry", 50, "Gasoline"))
    rental_system.add_vehicle(Bike(2, "Yamaha", "MT-15", 20))
    rental_system.add_vehicle(Scooter(3, "Xiaomi", "M365", 15))

    # Display available vehicles
    print("Available vehicles before renting:")
    rental_system.display_available_vehicles()

    print('------------------------------------------------------------------------------------------------')

    # Customer interaction
    john = Customer("John Doe")
    john.rent_vehicle(rental_system.find_vehicle(1))  # Renting a car

    # Display available vehicles after renting
    print("Available vehicles after renting:")
    rental_system.display_available_vehicles()

    print('------------------------------------------------------------------------------------------------')

    # Returning the car
    john.return_back()

    # Display available vehicles after returning
    print("Available vehicles after returning:")
    rental_system.display_available_vehicles()

main()