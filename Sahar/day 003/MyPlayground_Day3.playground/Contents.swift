import Cocoa

// --> Arrays to store ordered data
// [] start and end numbers

var oneDirection = ["harry","louise", "niall", "liam", "zayn"]
let numbers = [4,8,15,16,23,42]
var temps = [25.2, 28.2, 23]

//when reading values of an array, we do it by asking for their position
//we start counting at 0!
print(oneDirection[0]) //gives you the very first thing in the array
print (numbers[1]) //gives you the 2nd thing in the array
print (temps [2]) //gives you the third thing in the array

//Note: you need to makes sure the index (aka position) you ask for actually exists in the array, otherwise the code will crash

//when an array is a variable, you can modify it after creating it
// let's add my own name to onedirection
//oneDirection was an array
oneDirection.append("sahar")
oneDirection.append("sahar")
oneDirection.append("sahar214")
//you can append the same thing over and over again
print(oneDirection)
// my name goes at the end. every appended item goes to the end


// your array can only hold one type of data at a time
// this will not work:
//temp.append("sahar")

// this ^ also applies to bringing values out of an array.


// you can't mix strings and ints or decimals. It's called type safety


//let's make an empty array and add items one by one:
// this is an array that hold specifically ints because we specefied it
// why the ()? it determines how many values is in the array.
var scores = Array<Int>()

scores.append(100)
scores.append(90)
scores.append(85)
print(scores[1])

//i could write:
//var scores = Array<Int>(another array's name)
// and it would give you an array with placeholder data that you give it
var scores2 = Array<Int>(scores)
print(scores2)


//let's make an array of strings
var albums = Array<String>()
albums.append("red")
albums.append("fearless")
albums.append("folklore")
//because arrays are so common in swift, you can use a shorthand way to refer to them:
var albums2 = [String]() //imagine it as a box holding strings inside

// swift needs you to be explicit with datatypes. but if the first item of your array is inserted, swift knows the array's type will be of the first item you entered
var albums3 = ["take me home"]
albums3.append("what makes you beautiful")







