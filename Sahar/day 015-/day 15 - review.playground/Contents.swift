import Cocoa

// 
// MARK: - Section 1: Variables and Constants
// Variables (`var`) can change their values, while constants (`let`) cannot.
var age = 25
age = 26 // You can update the value of a variable
print("My age is \(age).") // Output: My age is 26.

let name = "Alice"
// name = "Bob" // Uncommenting this line will cause an error because constants cannot be changed
print("My name is \(name).") // Output: My name is Alice.

// Use `let` for values that won't change and `var` for values that might.

// MARK: - Section 2: Data Types
// Swift is type-safe, meaning every variable or constant must have a specific type.
let numberOfApples: Int = 10 // Integer (whole numbers)
let pricePerApple: Double = 0.99 // Double (decimal numbers)
let greeting: String = "Hello, Swift!" // String (text)
let isRaining: Bool = true // Boolean (true/false)

// Type inference: Swift can infer the type based on the assigned value.
let inferredNumber = 42 // Swift infers this as an Int
let inferredText = "Swift is fun!" // Swift infers this as a String

print("I have \(numberOfApples) apples.") // Output: I have 10 apples.
print("Each apple costs $\(pricePerApple).") // Output: Each apple costs $0.99.

// MARK: - Section 3: Arrays and Dictionaries
// Arrays store ordered collections of values.
let fruits = ["Apple", "Banana", "Cherry"] // Array of Strings
print("The second fruit is \(fruits[1]).") // Output: The second fruit is Banana.

var colors = ["Red", "Green"] // Mutable array (declared with `var`)
colors.append("Blue") // Add a new element to the array
print("Colors: \(colors)") // Output: Colors: ["Red", "Green", "Blue"]

// Dictionaries store key-value pairs.
let ages = ["Alice": 25, "Bob": 30, "Charlie": 22] // Dictionary with String keys and Int values
print("Alice is \(ages["Alice"]!) years old.") // Output: Alice is 25 years old.

var scores = ["Math": 90, "Science": 85] // Mutable dictionary
scores["English"] = 95 // Add or modify a key-value pair
print("Scores: \(scores)") // Output: Scores: ["Math": 90, "Science": 85, "English": 95]

// MARK: - Section 4: Control Flow
// Use `if-else` for conditional logic.
let temperature = 28
if temperature > 30 {
    print("It's hot outside!") // This won't run
} else {
    print("It's a pleasant day.") // Output: It's a pleasant day.
}

// Use `switch` for multiple cases.
let grade = "A"
switch grade {
case "A":
    print("Excellent!")
case "B":
    print("Good job!")
default:
    print("Keep trying!")
}
// Output: Excellent!

// Use loops for repetition.
for i in 1...5 { // Closed range operator (1 through 5 inclusive)
    print("Count: \(i)")
}
// Output:
// Count: 1
// Count: 2
// Count: 3
// Count: 4
// Count: 5

var counter = 0
while counter < 3 { // While loop
    print("Counter: \(counter)")
    counter += 1
}
// Output:
// Counter: 0
// Counter: 1
// Counter: 2

// MARK: - Section 5: Functions
// Functions encapsulate reusable blocks of code.
func greet(name: String) {
    print("Hello, \(name)!")
}

greet(name: "Alice") // Output: Hello, Alice!

// Functions can return values.
func calculateArea(length: Int, width: Int) -> Int {
    return length * width
}

let area = calculateArea(length: 5, width: 3)
print("The area is \(area).") // Output: The area is 15.

// Functions can have default parameter values.
func sayHello(to name: String = "World") {
    print("Hello, \(name)!")
}

sayHello() // Output: Hello, World!
sayHello(to: "Swift") // Output: Hello, Swift!

// MARK: - Section 6: Classes and Objects
// Classes define blueprints for creating objects.
class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func introduce() {
        print("Hi, my name is \(name) and I am \(age) years old.")
    }
}

// Create an instance of the class.
let person = Person(name: "Alice", age: 25)
person.introduce() // Output: Hi, my name is Alice and I am 25 years old.

// Subclasses extend functionality.
class Student: Person {
    var studentID: String
    
    init(name: String, age: Int, studentID: String) {
        self.studentID = studentID
        super.init(name: name, age: age)
    }
    
    override func introduce() {
        super.introduce()
        print("My student ID is \(studentID).")
    }
}

let student = Student(name: "Bob", age: 20, studentID: "S12345")
student.introduce()
// Output:
// Hi, my name is Bob and I am 20 years old.
// My student ID is S12345.

// MARK: - Section 7: Optionals
// Optionals represent values that may or may not exist.
var favoriteColor: String? = "Blue"
print("My favorite color is \(favoriteColor ?? "unknown").") // Output: My favorite color is Blue.

favoriteColor = nil
print("My favorite color is \(favoriteColor ?? "unknown").") // Output: My favorite color is unknown.

// Safely unwrap optionals using `if let`.
if let unwrappedColor = favoriteColor {
    print("My favorite color is \(unwrappedColor).")
} else {
    print("I don't have a favorite color.") // Output: I don't have a favorite color.
}
