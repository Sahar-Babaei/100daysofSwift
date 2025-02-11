import Cocoa

// // MARK: - Section 1: Understanding Initializers
// In this section, we will explore what initializers are and why they are important.
// An initializer is a special method that prepares an instance of a class for use.
// It sets up the initial state of the object by assigning values to its properties.
// Every class in Swift must have at least one initializer unless all its properties have default values.

// MARK: - Section 2: Creating a Class with a Default Initializer
// In this section, we will create a simple class called `Person` with a default initializer.
// The `Person` class will have two properties: `name` and `age`.

class Person {
    // Properties of the Person class
    var name: String
    var age: Int
    
    // Default initializer
    // This initializer takes two parameters (`name` and `age`) and assigns them to the properties.
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    // Method to display information about the person
    func displayInfo() {
        print("\(name) is \(age) years old.")
    }
}

// MARK: - Section 3: Using the Default Initializer
// In this section, we will create an instance of the `Person` class using the default initializer.
// We will also call the `displayInfo` method to verify that the initializer works correctly.

// Creating an instance of the Person class
let person1 = Person(name: "Alice", age: 30)
person1.displayInfo() // Output: Alice is 30 years old.

// MARK: - Section 4: Adding a Custom Initializer
// In this section, we will add a custom initializer to the `Person` class.
// This initializer will allow us to create a `Person` instance without specifying the `age`.
// Instead, it will assign a default value of 18 to the `age` property.

extension Person {
    // Custom initializer with a default age
    convenience init(name: String) {
        // Call the default initializer with a default age of 18
        self.init(name: name, age: 18)
    }
}

// MARK: - Section 5: Using the Custom Initializer
// In this section, we will create another instance of the `Person` class using the custom initializer.
// This demonstrates how custom initializers can simplify object creation when some properties have default values.

// Creating an instance of the Person class using the custom initializer
let person2 = Person(name: "Bob")
person2.displayInfo() // Output: Bob is 18 years old.

// MARK: - Section 6: Adding Initializers to Subclasses
// In this section, we will create a subclass of `Person` called `Student`.
// The `Student` class will have an additional property called `studentID`.
// We will also add an initializer to the `Student` class that initializes both inherited and new properties.

class Student: Person {
    // Additional property specific to students
    var studentID: String
    
    // Initializer for the Student class
    // This initializer takes three parameters: `name`, `age`, and `studentID`.
    // It calls the superclass's initializer to set up the inherited properties (`name` and `age`).
    init(name: String, age: Int, studentID: String) {
        self.studentID = studentID
        super.init(name: name, age: age)
    }
    
    // Overriding the `displayInfo` method to include student-specific details
    override func displayInfo() {
        super.displayInfo() // Call the superclass's method to display basic person info
        print("Student ID: \(studentID)")
    }
}

// MARK: - Section 7: Using the Subclass Initializer
// In this section, we will create an instance of the `Student` class using its initializer.
// We will also call the `displayInfo` method to verify that the initializer works correctly.

// Creating an instance of the Student class
let student1 = Student(name: "Charlie", age: 20, studentID: "S12345")
student1.displayInfo()
// Output:
// Charlie is 20 years old.
// Student ID: S12345

// MARK: - Section 8: Reflection on Initializers
// In this final section, we reflect on what we've learned about initializers.
// Initializers are essential for setting up the initial state of objects.
// They ensure that all properties have valid values when an instance is created.
// Custom initializers can make your code more flexible by allowing optional or default values.
// When working with subclasses, you must always call the superclass's initializer (`super.init`) to initialize inherited properties.

// Note: There are two types of initializers in Swift:
// 1. Designated Initializers: These are the primary initializers for a class. They fully initialize all properties.
// 2. Convenience Initializers: These are secondary initializers that call a designated initializer to simplify object creation.

// By understanding and using initializers effectively, you can create robust and reusable classes in Swift.
