import Cocoa


// --> Booleans
//booleans - they store true or false
//these are all booleans
let goodDogs = true
var gameOver = false
let isMultiple = 120.isMultiple(of:3)

// you can't + - * / booleans!
// but using a ! can negate a boolean

var isAuthenticated = false;
isAuthenticated = !isAuthenticated
//print(isAuthenticated)
// remember to make sure to have things that will have their value changed to set as "var" not "let"

print (gameOver)
gameOver.toggle()
print (gameOver)
// toggle flips the boolean value.
// it's the same as using the ! mark

//--> adding/combining strigns
// 1) first method is using +
// 2) second method is string interpolation - build strings with strings and other types of data
let part1 = "hello "
let part2 = "world"
let message = part1 + part2
print(message)

let people = "haters"
let action = "hate"
let lyric = people + " gonna " + action
print (lyric)
// string + string results in concatination or joining together.
// the + operator here does a different job than 2+2
// this is called operator overloading and it's not very important
// works with += too

let bagCode = "1" + "2" + "3" + "4" + "5"
//swift doesn't add them at once. it adds 1+2 to make 12, then does 12 + 3 to make 123, then does 123 + 4 to make 1234, and so on
// this is not efficient
// there is another way: String Interplayation
let name = "taylor"
let age = 26
let greeting = "hello, my name is \(name) and i'm \(age) years old"
print(greeting)
//mentor?? how is 26 which is an int being used here? will it write "true" if i \() a variable that is a boolean?

// why this is amazing? ^^
// because using + only lets you add string to string, or double and double but it doesn't work for intergers and strings
let aNumber = 11
//let missionMsg = "apollo " + aNumber + " landed on the moon"
//doesn't work ^^ you gotta convert aNumber to String
var missionMsg = "apollo " + String(aNumber) + " landed on the moon"
print(missionMsg)
//but this is a lot better:
missionMsg = "better version: apolo \(aNumber) landed on the moon"
print(missionMsg)

//You can even include calculations inside your string interpolation!
print(" 5 x 5 is \(5*5)")

let itWorks = true;
print("does doing this with a boolean work too? \(!itWorks)")


//--> some important notes from summary
// things like .count and .uppercased() can be used on strings
// doubles are not accurate so don't use them for storing money!
// the wording for different data types is as followes:
// -> int
// -> Double
// -> Bool


//--> checkpoint 1: a celsius to F convertor
// Your goal is to write a Swift playground that:
// Creates a constant holding any temperature in Celsius.
// Converts it to Fahrenheit by multiplying by 9, dividing by 5, then adding 32.
// Prints the result for the user, showing both the Celsius and Fahrenheit values.

let cTemp = 15
let fTemp = (cTemp*9)/5 + 32
print ("temperature is \(cTemp) C, which equals to \(fTemp) F")
