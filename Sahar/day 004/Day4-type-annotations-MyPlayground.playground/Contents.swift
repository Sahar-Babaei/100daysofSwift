import Cocoa

// type annotations (swift is type safe)


//swift knows the type is a string because we initialized the variable with a string. but we can explicityly say the type too
let surname = "lasso"
let surname1: String = "lasso"

//swift knows the type is an Int because we initialized the variable with an Int
var score = 0
var score1: Int = 0

// if we wrote
var grade = 0 //swift would think grade is of type Int
// but we'll explicitly say the type because we wanna make sure we can later use decimals
var grade1: Double = 0


//--> examples of types
let playerNumber: String = "bob" //string
let luckyNumber: Int = 13 //int
let pi: Double = 3.14 //double
let isVerified: Bool = true //boolean
var albums: [String] = ["red", "fearless" , "speak now"] //arrays
var user : [String:String] = ["name": "sahar", "age": "25"] //dictionary
var books: Set<String> = Set(["Justin Bieber", "Justin Timberlake", "Justin Trudeau"]) //set

//two ways to make an empty string with the type explicitly sey
var teams: [String] = []
var teams1 = [String]()



//--> now for enums
enum UIStyle{
    case light, dark,system
}
//these two are the same
var style = UIStyle.light
var style2: UIStyle = .system


//type inference: when you initilize something and the value is automatically setting the type based on whatever type the value is


//example:
let username : String
// lots of complex coding
username = "@twostraws"
//lots of other code and calculations
print(username)

/*
now let's say we were to add another name for the username
username = "taylor swift"
you get an error that says it's not allowed because username is a constant and it can be initilized once only!
*/
