import Cocoa

// ---> Arrays to store ordered data
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


// you can NOT mix strings and ints or decimals. It's called type safety
// so this doesn't work
let stringArray = ["em", "kaia","sahar", "kirsten"]
let numArray = [ 2, 3, 1, 4]
//let diffTypesSum = stringArray[2] + numArray[0]
// this gives error ^


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
//it's same as var albums = Array<String>()

// swift needs you to be explicit with datatypes. but if the first item of your array is inserted, swift knows the array's type will be of the first item you entered
var albums3 = ["take me home"]
albums3.append("what makes you beautiful")
//here i'm assigning an array of 1 string to albumbs 3
//therefore albums3 must be an array of strings

//!!reminder: shortcut for run is shift + cmnd + return

//1 --> you can use .count to display number of items in an array
print (albums3.count)

//2 --> you can remove items from an array by remove at or remove all! BUT the array needs to be a var! not a constant
var characters = ["harry", "ron" , "ginny" , "hermione" , "cedrick"]
print(characters.count)

characters.remove(at:2)
print(characters)
print(characters.count)

characters.removeAll()
print(characters.count)

//3 --> you can check if an array holds a particular item already, by using contains
let hsmCast = ["troy","sharpey","zic","Ryan"]
print(hsmCast.contains("harry potter"))
print(hsmCast.contains("troy"))

//4--> you can sort an array by using .sorted() and it sorts strings alphabetically, and integers 0-1-2~
let cities = ["london" ,"tokyo" , "vancouver", "seoul" , "new york", "tehran"]
print(cities.sorted())

let letters = ["s","a","h","a","r"]
print(letters.sorted())


//5--> you can reverse arrays by.reversed()
//what it does is it remembers the array is reversed, but doesn't print it in reversed because although it remembers, it doesn't actually flip the order. it's an optimization. it will do everything right when you want to access elements of the reversed array.
//it basically says : yes it's reversed, trust me it's fine. and wheneever needed it just goes and reads the array from the end

let funNumbers = [ 2, 7, 9 , 1 , 12, 6 , 4 , 22, 8 , 90, 0]
let revFunNumbers = funNumbers.reversed()
print (revFunNumbers)

let presidents = ["bush", "obama", "trump" , "biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)
print(presidents.reversed()[0])

//print(reversedPresidents[0])
//wanna know why this doesn't work?
//mentor??
// i think it's becaused reversedPresidents is a constant but noy an array, therefore it can't be used similar to an array by calling a position using [position]
