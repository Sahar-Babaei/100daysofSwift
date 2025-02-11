import Cocoa

// 

import Foundation  // Import Foundation for additional Swift functionalities

// STEP 1: Define a Base Class
// We first create a base class called `Animal`, which will have common properties and methods.
class Animal {
    var name: String  // A stored property to hold the animal's name
    var legs: Int     // A stored property to hold the number of legs
    
    // STEP 2: Create an Initializer (Constructor)
    // The initializer is called when we create a new object of this class.
    init(name: String, legs: Int) {
        self.name = name  // Assign the name value to the property
        self.legs = legs  // Assign the number of legs to the property
    }
    
    // STEP 3: Define a Method
    // This function prints a description of the animal.
    func describe() {
        print("This is a \(name). It has \(legs) legs.")
    }
}

// STEP 4: Create an Instance of the Class
// Now, we create an object (instance) of the `Animal` class.
let dog = Animal(name: "Dog", legs: 4)
dog.describe()  // Output: This is a Dog. It has 4 legs.


// MARK: - Inheritance (Subclassing)
// STEP 5: Create a Subclass
// We now create a subclass called `Cat` that extends the `Animal` class.
class Cat: Animal {
    var isTamed: Bool  // New property to check if the cat is tame
    
    // STEP 6: Create a Custom Initializer
    // This initializer allows us to set the `isTamed` property while keeping the base class properties.
    init(name: String, isTamed: Bool) {
        self.isTamed = isTamed  // Assigns value to the new property
        super.init(name: name, legs: 4)  // Calls the parent class initializer
    }
    
    // STEP 7: Override a Method
    // Here, we modify the `describe` method to add more details for a cat.
    override func describe() {
        let tameStatus = isTamed ? "tame" : "wild"  // Ternary operator to check if the cat is tame
        print("This is a \(tameStatus) cat named \(name). It has \(legs) legs.")
    }
}

// STEP 8: Create an Instance of the Subclass
// Now, we create an object of the `Cat` class.
let houseCat = Cat(name: "Whiskers", isTamed: true)
houseCat.describe()  // Output: This is a tame cat named Whiskers. It has 4 legs.


// MARK: - Computed Property Example
// STEP 9: Create Another Class with a Computed Property
// Now, let's create a `Person` class with first and last names.
class Person {
    var firstName: String
    var lastName: String
    
    // STEP 10: Define a Computed Property
    // A computed property dynamically returns the full name.
    var fullName: String {
        return "\(firstName) \(lastName)"  // Combines first and last name
    }
    
    // STEP 11: Create an Initializer for `Person`
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

// STEP 12: Create an Instance of the `Person` Class
// Now, we create an object of `Person` and print their full name.
let person = Person(firstName: "Alice", lastName: "Johnson")
print(person.fullName)  // Output: Alice Johnson
