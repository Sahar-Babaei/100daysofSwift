import Cocoa
//^^ made by apple, brings lots of functionality

var greeting = "Hello, playground"
// variable can vary - their values can change over time
// use descriptive name for variable and camelCase
// space before and after "=" is not needed but it's nice
// lines of code don't end with ; but if you want to put two or more lines of code on the same line, you can use ";"
// var is used to make a new variable, not needed if you wanna chnage the value assigned to a variable

let character = "daphne"
// let is for constants! it's used for values that dont change

var playerName = "roy"
print(playerName)
playerName = "dani"
print(playerName)
playerName = "eddie"
print(playerName)
// variables can have their values changed.

let managerName = "sammy b"
print(managerName)

// !! try to use constants as your standard go-to so you don't accidentally end up changing your values.

let emojiText = "you can use emojis wow 😊"
print (emojiText)

let quote = "this is how you would use \"quotations\" in swift lol"
print(quote)

//if you have long lines of string you wanna break, you gotta be careful! for a multi line code you need to use three quote marks """ and the quotes need to be on their own lines, with your string in between
let aLongString = """
hello
i love you.
okay bye
"""
print (aLongString)

// to get a length of a string, you can write ".count" after the name of the variable or constant.
print(managerName.count)
print(aLongString.count)
// it will count emojis and spaces!
let managerNameCount = managerName.count
print(managerNameCount)

//to turn something to upper case you use .uppercased()
print(quote.uppercased())

//.count doesnt' have () but .uppercased() does. why?
// it's complicated but for now think of it as: if you ask swift to read data, you don't need "()" but if you ask it to do something with the data, then you need "()"

//this lets us know if the string starts with a letter of our choosing
// .hasPrefix(" ")
print(quote.hasPrefix("this"))
// be careful! swift is case sensitive!
print(quote.hasPrefix("tHis"))
//or if you wanna know if it ends with something you use
// .hasSuffix(" ")
//for example you can check if something is a jpg by:
print (managerName.hasSuffix(".jpg"))


// to run code, instead of pressing play, you can use:
// shift + cmnd + return

// whole numbers are int (integers)
// they can be positive and negative
let score = 10
let reallyBigNumber = 100_000_000
// swift ignores these underscores so you can use it to breakdown numbers so they're easy to read
let reallyReallyBigNumber = 100_000_000____000_00

// you can use + - * / too

var counter = 10
counter = counter + 5
counter += 5
// these are both the same

counter *= 2
counter -= 10
counter /= 2

// when you wanna see if a number is a multople of another integer
let number = 120
print(number.isMultiple(of:3))
print(number.isMultiple(of:7))
print (120.isMultiple(of:3))

// for decimal numbers
// these are floating point numbers
let number1 = 0.1 + 0.2
print(number1)
// results in : 0.30000000000000004 !!
// mentor??
// swift stores double the data as other languages. decimals are doubles in swift!
//it's not good to do this:
let a = 1;
let b = 2.0
// let c = a + b
// you can't mix ints and doubles !!!
// if you want it to work, you gotta do:
let c = a + Int(b)
//or
let d = Double(a) + b

let double1 = 3.1
let double2 = 3131.1313
let double3 = 3.0
let int1 = 3

// once swift determines a data type for a variable. it should always stay as that data type
var name = "nicki"
name = "john"
// here we told swift that name will hold a string, and then assign a different string to it. this is ok.
// but this isn't allowed
//name = 45

var rating = 5.0
rating *= 2
// when you write it like this, swift understands 2 is a double!
// mentor??

// swift lets you use doubles and CGfloats interchangably. CGfloats are used by some APIs
// whenever it asks for a CG float just give it a double

// why double and floats and decimals are complicated are is because computers have to store them in binary



