import Cocoa

// // MARK: - Section 1: Defining the Parent Class
// In this section, we are creating a base class called `Vehicle`.
// A base class is a class that other classes can inherit from.
// The `Vehicle` class will have some basic properties and methods that all vehicles share.

class Vehicle {
    // Properties of the Vehicle class
    var brand: String
    var year: Int
    
    // Initializer to set up the properties when a new instance is created
    init(brand: String, year: Int) {
        self.brand = brand
        self.year = year
    }
    
    // Method to display information about the vehicle
    func displayInfo() {
        print("This is a \(brand) vehicle from the year \(year).")
    }
}

// MARK: - Section 2: Creating a Subclass
// In this section, we are creating a subclass called `Car` that inherits from the `Vehicle` class.
// Inheritance allows the `Car` class to reuse and extend the functionality of the `Vehicle` class.
// The `Car` class will have additional properties and methods specific to cars.

class Car: Vehicle {
    // Additional property specific to cars
    var numberOfDoors: Int
    
    // Initializer for the Car class
    // We need to call the superclass's initializer using `super.init` to set up the inherited properties.
    init(brand: String, year: Int, numberOfDoors: Int) {
        self.numberOfDoors = numberOfDoors
        super.init(brand: brand, year: year)
    }
    
    // Overriding the `displayInfo` method to include car-specific details
    // The `override` keyword is used to indicate that we are modifying a method from the parent class.
    override func displayInfo() {
        super.displayInfo() // Call the superclass's method to display basic vehicle info
        print("This car has \(numberOfDoors) doors.")
    }
}

// MARK: - Section 3: Using the Classes
// In this section, we are going to create instances of both the `Vehicle` and `Car` classes.
// We will demonstrate how inheritance works by calling methods on these instances.

// Creating an instance of the Vehicle class
let myVehicle = Vehicle(brand: "Toyota", year: 2020)
myVehicle.displayInfo() // Output: This is a Toyota vehicle from the year 2020.

// Creating an instance of the Car class
let myCar = Car(brand: "Honda", year: 2018, numberOfDoors: 4)
myCar.displayInfo()
// Output:
// This is a Honda vehicle from the year 2018.
// This car has 4 doors.

// MARK: - Section 4: Understanding Inheritance
// In this final section, we reflect on what we've done.
// The `Car` class inherits from the `Vehicle` class, meaning it automatically gets the `brand`, `year`, and `displayInfo` method.
// However, we were able to add a new property (`numberOfDoors`) and also override the `displayInfo` method to provide more specific behavior for cars.
// This demonstrates the power of inheritance: code reuse and extensibility.

// Note: Inheritance is a fundamental concept in object-oriented programming (OOP).
// It allows us to create a hierarchy of classes, where subclasses can inherit and modify behavior from their parent classes.
